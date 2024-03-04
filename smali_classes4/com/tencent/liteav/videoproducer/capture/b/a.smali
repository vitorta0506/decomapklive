.class public final Lcom/tencent/liteav/videoproducer/capture/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/capture/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/b/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private final A:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final B:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final C:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final D:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public a:Z

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/tencent/liteav/base/util/j;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/hardware/camera2/CaptureRequest;

.field private m:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private n:Lcom/tencent/liteav/base/util/q;

.field private o:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

.field private v:Z

.field private w:Ljava/util/concurrent/CountDownLatch;

.field private x:Ljava/util/concurrent/CountDownLatch;

.field private y:Lcom/tencent/liteav/videoproducer/capture/ai;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a;->b:Ljava/util/HashMap;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->f:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    .line 9
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->r:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->s:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    .line 12
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a$a;->a:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    .line 13
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->v:Z

    .line 14
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->a:Z

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->z:F

    .line 16
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/b/a$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/b/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->A:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 17
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/b/a$2;-><init>(Lcom/tencent/liteav/videoproducer/capture/b/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->B:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 18
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/b/a$3;-><init>(Lcom/tencent/liteav/videoproducer/capture/b/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->C:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 19
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/b/a$4;-><init>(Lcom/tencent/liteav/videoproducer/capture/b/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->D:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 20
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->g:Lcom/tencent/liteav/base/util/j;

    return-void
.end method

.method static synthetic a([I[I)I
    .locals 1

    const/4 v0, 0x1

    .line 165
    aget p0, p0, v0

    aget p1, p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method private a(I)Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferred fps: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Controller"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 158
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->n()Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/b/c;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 162
    aget v6, v3, v5

    if-gt v6, p1, :cond_1

    aget v6, v3, v4

    if-gt p1, v6, :cond_1

    move-object v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 163
    array-length p1, v2

    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    .line 164
    new-instance v0, Landroid/util/Range;

    aget p1, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aget v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/b/a;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Camera2Controller"

    const-string v0, "onCameraError, but camera is invalid, do not send camera error."

    .line 131
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->y:Lcom/tencent/liteav/videoproducer/capture/ai;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/ai;->onCameraError(Lcom/tencent/liteav/videoproducer/capture/ah;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/b/a;Z)V
    .locals 1

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFocusCallback success:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2Controller"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/b/a;ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(ZLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/b/a;ZLandroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(ZLandroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method private a(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->x:Ljava/util/concurrent/CountDownLatch;

    .line 139
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private a(ZLandroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->w:Ljava/util/concurrent/CountDownLatch;

    .line 135
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->j()V

    .line 144
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->p:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 145
    new-instance p1, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->p:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v1, 0x3

    .line 146
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 147
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 148
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 149
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->x:Ljava/util/concurrent/CountDownLatch;

    .line 150
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->B:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 151
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->x:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "startPreview cameraDevice null!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Camera2Controller"

    const-string/jumbo v1, "startPreview exception"

    .line 153
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(ZLandroid/hardware/camera2/CameraCaptureSession;)V

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/b/a;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->g:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/b/b;->a(Lcom/tencent/liteav/videoproducer/capture/b/a;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(II)Z
    .locals 5

    .line 15
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->d(Z)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Camera2Controller"

    if-nez v1, :cond_0

    const-string p1, "openCamera fail getCameraCharacteristics null"

    .line 17
    invoke-static {v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 20
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->m()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 21
    invoke-static {v1, v4, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/aj;->a(Ljava/util/List;Lcom/tencent/liteav/videobase/utils/Rotation;II)Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "openCamera "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    if-eqz p2, :cond_1

    const-string p2, "front camera"

    goto :goto_0

    :cond_1
    const-string p2, "back camera"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mPreviewSize "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mCameraRotation "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mIsCameraSupportAutoFocus "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->s:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->w:Ljava/util/concurrent/CountDownLatch;

    .line 24
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 25
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->A:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 26
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->w:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "openCamera exception:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, v2, p1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(ZLandroid/hardware/camera2/CameraDevice;)V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method static synthetic c(Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->d(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/b/a;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->o()Z

    move-result p0

    return p0
.end method

.method private static d(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/b/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    return p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/capture/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private e(Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 5
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setFocusMode to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2Controller"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/capture/b/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/capture/b/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/capture/b/a;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method private i()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->d(Z)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/capture/b/a;)Lcom/tencent/liteav/base/util/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->g:Lcom/tencent/liteav/base/util/j;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->C:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updatePreview exception:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Controller"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/base/util/q;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Camera2Controller"

    if-nez v0, :cond_0

    const-string v0, "getPreviewSizes error, Characteristics is null"

    .line 2
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_1

    const-string v0, "getPreviewSizes map null"

    .line 4
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "getPreviewSizes choices is null"

    .line 6
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 9
    new-instance v5, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private n()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Camera2Controller"

    const-string v2, "getPreviewFps error, Characteristics: "

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 5
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 6
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v1

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v7, v2

    .line 7
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private o()Z
    .locals 2

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/b/a$a;->b:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->w:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->w:Ljava/util/concurrent/CountDownLatch;

    .line 169
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->x:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 171
    :cond_1
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->x:Ljava/util/concurrent/CountDownLatch;

    .line 172
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->j()V

    .line 173
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->k()V

    .line 174
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->l:Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    .line 175
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->a:Z

    .line 176
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->p:Landroid/graphics/SurfaceTexture;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    .line 178
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a$a;->a:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    const-string v0, "Camera2Controller"

    const-string/jumbo v1, "stopCapture success"

    .line 179
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 9

    .line 102
    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->z:F

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Camera2Controller"

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setZoom fail, scale:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewBuilder is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 106
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 107
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 108
    invoke-static {p1, v5, v6}, Lcom/tencent/liteav/base/util/g;->a(FFF)F

    move-result p1

    sub-float v5, v4, v6

    mul-float p1, p1, v5

    add-float/2addr p1, v6

    .line 109
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-int v7, v7

    .line 110
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v4, v8

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v7

    .line 112
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    int-to-float v4, v8

    sub-float v6, p1, v6

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v7, v7

    mul-float v7, v7, v6

    div-float/2addr v7, v5

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 113
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calculateZoomRect calculatedZoomLevel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " rect:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newRect2:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->l()V

    return-void
.end method

.method public final a(II)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 50
    iget-boolean v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->r:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->s:Z

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 51
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->o()Z

    move-result v3

    const-string v4, "Camera2Controller"

    if-nez v3, :cond_c

    iget-boolean v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->v:Z

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 52
    :cond_1
    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v3, :cond_2

    const-string v0, "CameraCaptureSession get fail"

    .line 53
    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v0, :cond_b

    .line 54
    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v9, v8, Lcom/tencent/liteav/base/util/q;->a:I

    if-ge v0, v9, :cond_b

    if-ltz v2, :cond_b

    iget v8, v8, Lcom/tencent/liteav/base/util/q;->b:I

    if-lt v2, v8, :cond_3

    goto/16 :goto_4

    :cond_3
    new-array v5, v5, [Ljava/lang/Object;

    .line 55
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v8, "Start auto focus at (%d, %d)"

    invoke-static {v4, v8, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-double v8, v0

    int-to-double v10, v2

    .line 56
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 57
    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    .line 58
    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v12, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v5, v12, :cond_5

    sget-object v13, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v5, v13, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v23, v2

    move v2, v0

    move/from16 v0, v23

    .line 59
    :cond_5
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/liteav/base/util/t;->a(Landroid/content/Context;)Lcom/tencent/liteav/base/util/q;

    move-result-object v5

    .line 60
    iget v13, v5, Lcom/tencent/liteav/base/util/q;->a:I

    mul-int v14, v2, v13

    iget v5, v5, Lcom/tencent/liteav/base/util/q;->b:I

    mul-int v15, v0, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/16 v20, 0x0

    if-le v14, v15, :cond_6

    int-to-double v13, v13

    mul-double v13, v13, v18

    int-to-double v6, v0

    div-double/2addr v13, v6

    int-to-double v6, v2

    move-object/from16 v22, v3

    int-to-double v2, v5

    div-double/2addr v2, v13

    sub-double/2addr v6, v2

    div-double v6, v6, v16

    move-wide v2, v6

    move-wide/from16 v5, v20

    goto :goto_1

    :cond_6
    move-object/from16 v22, v3

    int-to-double v5, v5

    mul-double v5, v5, v18

    int-to-double v2, v2

    div-double v2, v5, v2

    int-to-double v5, v0

    int-to-double v13, v13

    div-double/2addr v13, v2

    sub-double/2addr v5, v13

    div-double v5, v5, v16

    move-wide v13, v2

    move-wide/from16 v2, v20

    :goto_1
    div-double/2addr v8, v13

    add-double/2addr v8, v5

    div-double/2addr v10, v13

    add-double/2addr v10, v2

    .line 61
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v12, :cond_7

    .line 62
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-double v2, v0

    sub-double v8, v2, v8

    move-wide/from16 v23, v8

    move-wide v8, v10

    move-wide/from16 v10, v23

    goto :goto_2

    .line 63
    :cond_7
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v2, :cond_8

    .line 64
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-double v2, v0

    sub-double/2addr v2, v10

    move-wide v10, v8

    move-wide v8, v2

    .line 65
    :cond_8
    :goto_2
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->l:Landroid/hardware/camera2/CaptureRequest;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_9

    const-string v0, "getMeteringRect can\'t get crop region"

    .line 66
    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 68
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 70
    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    iget v6, v5, Lcom/tencent/liteav/base/util/q;->b:I

    mul-int v7, v6, v2

    iget v5, v5, Lcom/tencent/liteav/base/util/q;->a:I

    mul-int v12, v5, v3

    if-le v7, v12, :cond_a

    int-to-double v12, v3

    mul-double v12, v12, v18

    int-to-double v6, v6

    div-double/2addr v12, v6

    int-to-double v2, v2

    int-to-double v5, v5

    mul-double v5, v5, v12

    sub-double/2addr v2, v5

    div-double v2, v2, v16

    move-wide/from16 v23, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v23

    goto :goto_3

    :cond_a
    int-to-double v12, v2

    mul-double v12, v12, v18

    int-to-double v14, v5

    div-double/2addr v12, v14

    int-to-double v2, v3

    int-to-double v5, v6

    mul-double v5, v5, v12

    sub-double/2addr v2, v5

    div-double v2, v2, v16

    :goto_3
    mul-double v8, v8, v12

    add-double v8, v8, v20

    .line 71
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    add-double/2addr v8, v5

    mul-double v10, v10, v12

    add-double/2addr v10, v2

    .line 72
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    add-double/2addr v10, v2

    .line 73
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v5, v3

    const-wide v12, 0x3fa999999999999aL    # 0.05

    mul-double v5, v5, v12

    sub-double v5, v8, v5

    double-to-int v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x0

    .line 75
    invoke-static {v3, v6, v5}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v14, v3

    mul-double v14, v14, v12

    add-double/2addr v8, v14

    double-to-int v3, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 77
    invoke-static {v3, v6, v5}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v7, v3

    mul-double v7, v7, v12

    sub-double v7, v10, v7

    double-to-int v3, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 79
    invoke-static {v3, v6, v5}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v7, v3

    mul-double v7, v7, v12

    add-double/2addr v10, v7

    double-to-int v3, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 81
    invoke-static {v3, v6, v0}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 82
    :try_start_0
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v7, 0x3e8

    invoke-direct {v5, v2, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-virtual {v0, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 83
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v5, v2, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 v2, 0x0

    aput-object v5, v6, v2

    invoke-virtual {v0, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 84
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 86
    invoke-virtual {v0, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 87
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 89
    invoke-virtual {v0, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 90
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 92
    invoke-virtual {v0, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 93
    iput-boolean v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->v:Z

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->a:Z

    .line 95
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->D:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->f:Landroid/os/Handler;

    move-object/from16 v5, v22

    .line 98
    invoke-virtual {v5, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "startAutoFocusAtPosition exception:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_4
    new-array v3, v5, [Ljava/lang/Object;

    .line 100
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "Start auto focus at (%d, %d) invalid "

    invoke-static {v4, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "autoFocus not preview, mCameraStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsAutoFocusing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/tencent/liteav/videoproducer/capture/b/a;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 117
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->o()Z

    move-result v0

    const-string v1, "Camera2Controller"

    if-eqz v0, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "turnOnTorch error mCameraStatus:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 119
    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 120
    iput v4, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 121
    iput v2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 122
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "turnOnTorch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updateView:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 123
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->l()V

    :cond_3
    return-void
.end method

.method public final a(IIZ)Z
    .locals 6

    .line 125
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->m()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 126
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/aj;->a(Ljava/util/List;Lcom/tencent/liteav/videobase/utils/Rotation;II)Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->b()I

    move-result p2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->b()I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 129
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "isCurrentPreviewSizeAspectRatioMatch:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera2Controller"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/videoproducer/capture/ai;)Z
    .locals 12

    const-string v0, "1"

    .line 3
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->y:Lcom/tencent/liteav/videoproducer/capture/ai;

    .line 4
    sget-boolean p3, Lcom/tencent/liteav/videoproducer/capture/b/a;->c:Z

    const-string v1, "camera"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Camera2Controller"

    if-nez p3, :cond_3

    .line 5
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    .line 6
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 7
    invoke-virtual {p3, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 8
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_0

    .line 9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_0

    .line 10
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 11
    sget-object v10, Lcom/tencent/liteav/videoproducer/capture/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sput-object v8, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz v10, :cond_1

    .line 13
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v2, :cond_1

    const-string v10, "0"

    .line 14
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 15
    sget-object v10, Lcom/tencent/liteav/videoproducer/capture/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sput-object v8, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "initCamera2Ability front:"

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", back:"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/liteav/videoproducer/capture/b/a;->d:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 18
    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a;->e:Ljava/lang/String;

    .line 19
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "initCamera2Ability exception!"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_2
    sput-boolean v2, Lcom/tencent/liteav/videoproducer/capture/b/a;->c:Z

    :cond_3
    if-eqz p1, :cond_c

    if-nez p2, :cond_4

    goto/16 :goto_7

    .line 21
    :cond_4
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/b/a$a;->a:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    if-eq p3, v0, :cond_5

    const-string p1, "it\'s capturing, you should Stop first."

    .line 22
    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 23
    :cond_5
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->p:Landroid/graphics/SurfaceTexture;

    .line 24
    iget-object p3, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    .line 25
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    if-nez p3, :cond_6

    :goto_3
    const/4 p3, 0x0

    goto :goto_6

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 27
    array-length v5, p3

    if-eqz v5, :cond_8

    array-length v5, p3

    if-ne v5, v2, :cond_7

    aget p3, p3, v3

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p3, 0x1

    goto :goto_6

    .line 28
    :cond_8
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "Current "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->q:Z

    if-eqz v5, :cond_9

    const-string v5, "front camera "

    goto :goto_5

    :cond_9
    const-string v5, "back camera "

    :goto_5
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not support auto focus."

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :goto_6
    iput-boolean p3, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->s:Z

    .line 30
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    .line 31
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->C:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->f:Landroid/os/Handler;

    invoke-virtual {p3, v1, v5}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 32
    iget p3, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-direct {p0, p3, v1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->b(II)Z

    move-result p3

    if-nez p3, :cond_a

    const-string p1, "openCamera failed."

    .line 33
    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->k()V

    .line 35
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    return v3

    .line 36
    :cond_a
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(Landroid/graphics/SurfaceTexture;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string/jumbo p1, "startPreview failed."

    .line 37
    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->j()V

    .line 39
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    return v3

    .line 40
    :cond_b
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(I)Landroid/util/Range;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 43
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->r:Z

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->e(Z)V

    .line 44
    iget p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->z:F

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->a(F)V

    .line 45
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->l:Landroid/hardware/camera2/CaptureRequest;

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->l()V

    .line 47
    sget-object p1, Lcom/tencent/liteav/videoproducer/capture/b/a$a;->b:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    const-string/jumbo p1, "startCaptureInternal ok."

    .line 48
    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_c
    :goto_7
    const-string p1, "captureParams or surfaceTexture is null"

    .line 49
    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final b()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->o:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public final b(F)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->o()Z

    move-result v0

    const-string v1, "Camera2Controller"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setExposureCompensation fail, value:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mCameraStatus:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->u:Lcom/tencent/liteav/videoproducer/capture/b/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 4
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const-string p1, "camera doesn\'t support exposure compensation"

    .line 6
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 7
    invoke-static {p1, v3, v1}, Lcom/tencent/liteav/base/util/g;->a(FFF)F

    move-result p1

    sub-int v1, v0, v2

    int-to-float v1, v1

    sub-float/2addr p1, v3

    mul-float v1, v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr p1, v2

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 9
    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->l()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->r:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b/a;->e(Z)V

    return-void
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final d()Lcom/tencent/liteav/base/util/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/b/a;->n:Lcom/tencent/liteav/base/util/q;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/b/a;->i()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
