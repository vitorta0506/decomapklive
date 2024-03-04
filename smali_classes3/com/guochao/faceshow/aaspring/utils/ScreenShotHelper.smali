.class public Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;
    }
.end annotation


# static fields
.field public static final REQUEST_MEDIA_PROJECTION:I = 0x28c

.field public static onActivityResult:Z = false

.field private static sScreenShotHelper:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;


# instance fields
.field private mOnScreenShotListener:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->mOnScreenShotListener:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getScreenShot(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private createVirtualDisplay(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v3

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const-string v1, "screen-mirror"

    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    .line 5
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->sScreenShotHelper:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->sScreenShotHelper:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->sScreenShotHelper:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->sScreenShotHelper:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    return-object v0
.end method

.method private getScreenShot(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->createVirtualDisplay(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;)V

    .line 3
    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 4
    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)V

    .line 5
    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/ScreenShotService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "code"

    .line 6
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "data"

    .line 7
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;

    invoke-direct {p3, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;)V

    const-string v0, "OnMediaProjectionProvider"

    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string v1, "media_projection"

    .line 10
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getScreenShot(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method public startScreenShot(Landroid/app/Activity;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V
    .locals 7

    .line 1
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->mOnScreenShotListener:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v4, p1, v2

    aget v5, p1, v3

    aget v2, p1, v2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget p1, p1, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {v1, v4, v5, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    invoke-static {p3, v1, v0, p1, p2}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    const-string p2, "media_projection"

    .line 11
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/projection/MediaProjectionManager;

    .line 12
    invoke-virtual {p2}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x28c

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method public startScreenShot(Landroidx/fragment/app/Fragment;Landroid/view/Window;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V
    .locals 6

    .line 13
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->mOnScreenShotListener:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    .line 14
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p4, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 15
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {p4, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 17
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v3, p1, v1

    aget v4, p1, v2

    aget v1, p1, v1

    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget p1, p1, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {v0, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$2;

    invoke-direct {p1, p0, p4}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/os/Handler;

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    invoke-static {p2, v0, p4, p1, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "media_projection"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/projection/MediaProjectionManager;

    .line 23
    invoke-virtual {p2}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p2

    const/16 p3, 0x28c

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
