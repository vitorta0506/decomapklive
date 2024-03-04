.class public Lorg/libpag/PAGView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/extra/tools/ScreenBroadcastReceiver$ScreenStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libpag/PAGView$PAGFlushListener;,
        Lorg/libpag/PAGView$PAGViewListener;,
        Lorg/libpag/PAGView$PAGRendererHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_SDK_VERSION_O:I = 0x1a

.field private static final MSG_FLUSH:I = 0x0

.field private static final MSG_HANDLER_THREAD_QUITE:I = 0x2

.field private static final MSG_SURFACE_DESTROY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PAGView"

.field private static final g_HandlerLock:Ljava/lang/Object;

.field private static volatile g_HandlerThreadCount:I

.field private static g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

.field private static g_PAGRendererThread:Landroid/os/HandlerThread;


# instance fields
.field private _isAnimatorPreRunning:Ljava/lang/Boolean;

.field private _isPlaying:Z

.field private animator:Landroid/animation/ValueAnimator;

.field private volatile animatorProgress:D

.field private volatile currentPlayTime:J

.field private filePath:Ljava/lang/String;

.field private imageReplacementMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/libpag/PAGImage;",
            ">;"
        }
    .end annotation
.end field

.field private isAttachedToWindow:Z

.field private isSync:Z

.field private mAnimatorCancelRunnable:Ljava/lang/Runnable;

.field private final mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatorStartRunnable:Ljava/lang/Runnable;

.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mPAGFlushListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libpag/PAGView$PAGFlushListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveVisibleState:Z

.field private mViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libpag/PAGView$PAGViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private pagFile:Lorg/libpag/PAGFile;

.field private pagPlayer:Lorg/libpag/PAGPlayer;

.field private pagSurface:Lorg/libpag/PAGSurface;

.field private preAggregatedVisible:Z

.field private sharedContext:Landroid/opengl/EGLContext;

.field private textReplacementMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/libpag/PAGText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/libpag/PAGView;->g_HandlerLock:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lorg/extra/tools/BroadcastUtil;->getInstance()Lorg/extra/tools/BroadcastUtil;

    move-result-object v0

    invoke-virtual {v0}, Lorg/extra/tools/BroadcastUtil;->registerScreenBroadcast()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 6
    iput-object v0, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    .line 9
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isSync:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Lorg/libpag/PAGView$1;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$1;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 13
    new-instance p1, Lorg/libpag/PAGView$2;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$2;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 14
    new-instance p1, Lorg/libpag/PAGView$5;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$5;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Lorg/libpag/PAGView$6;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$6;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    .line 17
    invoke-direct {p0}, Lorg/libpag/PAGView;->setupSurfaceTexture()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/EGLContext;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    .line 22
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 23
    iput-object v0, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    .line 26
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isSync:Z

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Lorg/libpag/PAGView$1;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$1;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 30
    new-instance p1, Lorg/libpag/PAGView$2;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$2;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 31
    new-instance p1, Lorg/libpag/PAGView$5;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$5;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    .line 32
    new-instance p1, Lorg/libpag/PAGView$6;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$6;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    .line 34
    iput-object p2, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    .line 35
    invoke-direct {p0}, Lorg/libpag/PAGView;->setupSurfaceTexture()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    .line 40
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 41
    iput-object p2, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    .line 42
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    .line 43
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    .line 44
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isSync:Z

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    .line 47
    new-instance p1, Lorg/libpag/PAGView$1;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$1;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 48
    new-instance p1, Lorg/libpag/PAGView$2;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$2;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 49
    new-instance p1, Lorg/libpag/PAGView$5;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$5;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance p1, Lorg/libpag/PAGView$6;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$6;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    .line 52
    invoke-direct {p0}, Lorg/libpag/PAGView;->setupSurfaceTexture()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    const-string p3, ""

    .line 56
    iput-object p3, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    .line 57
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 58
    iput-object p2, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    .line 59
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    .line 60
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    .line 61
    iput-boolean p1, p0, Lorg/libpag/PAGView;->isSync:Z

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    .line 64
    new-instance p1, Lorg/libpag/PAGView$1;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$1;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 65
    new-instance p1, Lorg/libpag/PAGView$2;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$2;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 66
    new-instance p1, Lorg/libpag/PAGView$5;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$5;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance p1, Lorg/libpag/PAGView$6;

    invoke-direct {p1, p0}, Lorg/libpag/PAGView$6;-><init>(Lorg/libpag/PAGView;)V

    iput-object p1, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    .line 69
    invoke-direct {p0}, Lorg/libpag/PAGView;->setupSurfaceTexture()V

    return-void
.end method

.method private static declared-synchronized DestroyHandlerThread()V
    .locals 3

    const-class v0, Lorg/libpag/PAGView;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lorg/libpag/PAGView;->g_HandlerThreadCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/libpag/PAGView;->g_HandlerThreadCount:I

    .line 2
    sget v1, Lorg/libpag/PAGView;->g_HandlerThreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    if-eqz v1, :cond_3

    sget-object v1, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 6
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 7
    :try_start_2
    invoke-static {v1, v2}, Lorg/libpag/PAGView;->SendMessage(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static HandlerThreadQuit()V
    .locals 2

    .line 1
    sget v0, Lorg/libpag/PAGView;->g_HandlerThreadCount:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    sput-object v1, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    .line 7
    sput-object v1, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    :cond_3
    :goto_0
    return-void
.end method

.method private static NeedsUpdateView(Lorg/libpag/PAGView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGView;->isSync:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/libpag/PAGView;->updateView()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0, p0}, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateView(Lorg/libpag/PAGView;)V

    return-void
.end method

.method private static SendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput p0, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    :cond_1
    sget-object p0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static declared-synchronized StartHandlerThread()V
    .locals 3

    const-class v0, Lorg/libpag/PAGView;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lorg/libpag/PAGView;->g_HandlerThreadCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/libpag/PAGView;->g_HandlerThreadCount:I

    .line 2
    sget-object v1, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "pag-renderer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    :cond_0
    sget-object v1, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lorg/libpag/PAGView$PAGRendererHandler;

    sget-object v2, Lorg/libpag/PAGView;->g_PAGRendererThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/libpag/PAGView$PAGRendererHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic access$000(Lorg/libpag/PAGView;)V
    .locals 0

    invoke-direct {p0}, Lorg/libpag/PAGView;->updateView()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lorg/libpag/PAGView;->HandlerThreadQuit()V

    return-void
.end method

.method static synthetic access$202(Lorg/libpag/PAGView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/libpag/PAGView;->currentPlayTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/libpag/PAGView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lorg/libpag/PAGView;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/libpag/PAGView;->onAnimationUpdate(D)V

    return-void
.end method

.method static synthetic access$500(Lorg/libpag/PAGView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/libpag/PAGView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/libpag/PAGView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    return p0
.end method

.method private applyReplacements()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    check-cast v0, Lorg/libpag/PAGFile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/libpag/PAGText;

    .line 5
    invoke-virtual {v0, v3, v4}, Lorg/libpag/PAGFile;->replaceText(ILorg/libpag/PAGText;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 7
    :goto_1
    iget-object v2, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8
    iget-object v2, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 9
    iget-object v3, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/libpag/PAGImage;

    .line 10
    invoke-virtual {v0, v2, v3}, Lorg/libpag/PAGFile;->replaceImage(ILorg/libpag/PAGImage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/libpag/PAGView;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libpag/PAGView;->currentPlayTime:J

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private doPlay()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    const-string v1, "PAGView"

    if-nez v0, :cond_0

    const-string v0, "doPlay: PAGView is not attached to window"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "doPlay"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lorg/libpag/PAGView;->currentPlayTime:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 5
    invoke-direct {p0}, Lorg/libpag/PAGView;->startAnimator()V

    return-void
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onAnimationUpdate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/libpag/PAGView;->animatorProgress:D

    .line 2
    invoke-static {p0}, Lorg/libpag/PAGView;->NeedsUpdateView(Lorg/libpag/PAGView;)V

    return-void
.end method

.method private pauseAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGView;->cancelAnimator()V

    :cond_1
    return-void
.end method

.method private resumeAnimator()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object v1, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGView;->doPlay()V

    return-void

    .line 5
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    return-void
.end method

.method private setupSurfaceTexture()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 2
    new-instance v1, Lorg/libpag/PAGPlayer;

    invoke-direct {v1}, Lorg/libpag/PAGPlayer;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    .line 3
    invoke-virtual {p0, p0}, Lorg/libpag/PAGView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimator()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/libpag/PAGView;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mAnimatorCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGView;->mAnimatorStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    iget-wide v1, p0, Lorg/libpag/PAGView;->animatorProgress:D

    invoke-virtual {v0, v1, v2}, Lorg/libpag/PAGPlayer;->setProgress(D)V

    .line 3
    invoke-virtual {p0}, Lorg/libpag/PAGView;->flush()Z

    .line 4
    new-instance v0, Lorg/libpag/PAGView$3;

    invoke-direct {v0, p0}, Lorg/libpag/PAGView$3;-><init>(Lorg/libpag/PAGView;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lorg/libpag/PAGView$4;

    invoke-direct {v0, p0}, Lorg/libpag/PAGView$4;-><init>(Lorg/libpag/PAGView;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addListener(Lorg/libpag/PAGView$PAGViewListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addPAGFlushListener(Lorg/libpag/PAGView$PAGFlushListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cacheEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->cacheEnabled()Z

    move-result v0

    return v0
.end method

.method public cacheScale()F
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->cacheScale()F

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public flush()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->flush()Z

    move-result v0

    return v0
.end method

.method public flush(Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/libpag/PAGView;->flush()Z

    move-result p1

    return p1
.end method

.method public freeCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->freeCache()V

    :cond_0
    return-void
.end method

.method public getComposition()Lorg/libpag/PAGComposition;
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lorg/libpag/PAGFile;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/libpag/PAGView;->pagFile:Lorg/libpag/PAGFile;

    return-object v0
.end method

.method public getLayersUnderPoint(FF)[Lorg/libpag/PAGLayer;
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/libpag/PAGPlayer;->getLayersUnderPoint(FF)[Lorg/libpag/PAGLayer;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRootComposition()Lorg/libpag/PAGComposition;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSync()Z
    .locals 1

    iget-boolean v0, p0, Lorg/libpag/PAGView;->isSync:Z

    return v0
.end method

.method public matrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->matrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public maxFrameRate()F
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->maxFrameRate()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 2
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-static {}, Lorg/extra/tools/BroadcastUtil;->getInstance()Lorg/extra/tools/BroadcastUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/extra/tools/BroadcastUtil;->registerScreenBroadcast(Lorg/extra/tools/ScreenBroadcastReceiver$ScreenStateListener;)V

    .line 5
    sget-object v0, Lorg/libpag/PAGView;->g_HandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lorg/libpag/PAGView;->StartHandlerThread()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lorg/libpag/PAGView;->resumeAnimator()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGView;->isAttachedToWindow:Z

    .line 2
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 3
    invoke-static {}, Lorg/extra/tools/BroadcastUtil;->getInstance()Lorg/extra/tools/BroadcastUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/extra/tools/BroadcastUtil;->unregisterScreenBroadcast(Lorg/extra/tools/ScreenBroadcastReceiver$ScreenStateListener;)V

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    .line 7
    :cond_0
    invoke-direct {p0}, Lorg/libpag/PAGView;->pauseAnimator()V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 9
    sget-object v0, Lorg/libpag/PAGView;->g_HandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Lorg/libpag/PAGView;->DestroyHandlerThread()V

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/libpag/PAGView;->mSaveVisibleState:Z

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGView;->mSaveVisibleState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3
    :cond_0
    iput-boolean v1, p0, Lorg/libpag/PAGView;->mSaveVisibleState:Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->sharedContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v0}, Lorg/libpag/PAGSurface;->FromSurfaceTexture(Landroid/graphics/SurfaceTexture;Landroid/opengl/EGLContext;)Lorg/libpag/PAGSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    .line 5
    iget-object v1, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v1, v0}, Lorg/libpag/PAGPlayer;->setSurface(Lorg/libpag/PAGSurface;)V

    .line 6
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->clearAll()Z

    .line 9
    invoke-static {p0}, Lorg/libpag/PAGView;->NeedsUpdateView(Lorg/libpag/PAGView;)V

    .line 10
    iget-object v0, p0, Lorg/libpag/PAGView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/libpag/PAGPlayer;->setSurface(Lorg/libpag/PAGSurface;)V

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->freeCache()V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    sget-object v0, Lorg/libpag/PAGView;->g_PAGRendererHandler:Lorg/libpag/PAGView$PAGRendererHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v1, p1}, Lorg/libpag/PAGView;->SendMessage(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 9
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    .line 10
    sget-object p1, Lorg/libpag/PAGView;->g_HandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_0
    invoke-static {}, Lorg/libpag/PAGView;->DestroyHandlerThread()V

    .line 12
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->updateSize()V

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGView;->pagSurface:Lorg/libpag/PAGSurface;

    invoke-virtual {v0}, Lorg/libpag/PAGSurface;->clearAll()Z

    .line 4
    invoke-static {p0}, Lorg/libpag/PAGView;->NeedsUpdateView(Lorg/libpag/PAGView;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onVisibilityAggregated(Z)V

    .line 2
    iget-boolean v0, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lorg/libpag/PAGView;->preAggregatedVisible:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityAggregated isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAGView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/libpag/PAGView;->resumeAnimator()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lorg/libpag/PAGView;->pauseAnimator()V

    :goto_0
    return-void
.end method

.method public play()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    .line 3
    iget-wide v0, p0, Lorg/libpag/PAGView;->animatorProgress:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/libpag/PAGView;->setProgress(D)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/libpag/PAGView;->doPlay()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeListener(Lorg/libpag/PAGView$PAGViewListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePAGFlushListener(Lorg/libpag/PAGView$PAGFlushListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGView;->mPAGFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replaceImage(ILorg/libpag/PAGImage;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/libpag/PAGView;->pagFile:Lorg/libpag/PAGFile;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Lorg/libpag/PAGFile;

    invoke-virtual {v0, p1, p2}, Lorg/libpag/PAGFile;->replaceImage(ILorg/libpag/PAGImage;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGView;->imageReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scaleMode()I
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->scaleMode()I

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setCacheEnabled(Z)V

    return-void
.end method

.method public setCacheScale(F)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setCacheScale(F)V

    return-void
.end method

.method public setComposition(Lorg/libpag/PAGComposition;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lorg/libpag/PAGView;->pagFile:Lorg/libpag/PAGFile;

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 4
    iget-object p1, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {p1}, Lorg/libpag/PAGPlayer;->duration()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFile(Lorg/libpag/PAGFile;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/libpag/PAGFile;->copyOriginal()Lorg/libpag/PAGFile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/libpag/PAGView;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 3
    iput-object p1, p0, Lorg/libpag/PAGView;->pagFile:Lorg/libpag/PAGFile;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGView;->applyReplacements()V

    :cond_1
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setMaxFrameRate(F)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setMaxFrameRate(F)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "assets://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/libpag/PAGFile;->Load(Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lorg/libpag/PAGView;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 5
    iput-object p1, p0, Lorg/libpag/PAGView;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setProgress(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double p1, p1, v0

    double-to-long p1, p1

    iput-wide p1, p0, Lorg/libpag/PAGView;->currentPlayTime:J

    .line 3
    iget-object p1, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lorg/libpag/PAGView;->currentPlayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGView;->animator:Landroid/animation/ValueAnimator;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setScaleMode(I)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setScaleMode(I)V

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/libpag/PAGView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    :goto_0
    return-void
.end method

.method public setSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/libpag/PAGView;->isSync:Z

    return-void
.end method

.method public setTextData(ILorg/libpag/PAGText;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->getComposition()Lorg/libpag/PAGComposition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/libpag/PAGView;->pagFile:Lorg/libpag/PAGFile;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Lorg/libpag/PAGFile;

    invoke-virtual {v0, p1, p2}, Lorg/libpag/PAGFile;->replaceText(ILorg/libpag/PAGText;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGView;->textReplacementMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0, p1}, Lorg/libpag/PAGPlayer;->setVideoEnabled(Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "PAGView"

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/libpag/PAGView;->_isPlaying:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/libpag/PAGView;->_isAnimatorPreRunning:Ljava/lang/Boolean;

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGView;->cancelAnimator()V

    return-void
.end method

.method public videoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/libpag/PAGView;->pagPlayer:Lorg/libpag/PAGPlayer;

    invoke-virtual {v0}, Lorg/libpag/PAGPlayer;->videoEnabled()Z

    move-result v0

    return v0
.end method
