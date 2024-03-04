.class public Lcom/tencent/liteav/videobase/videobase/DisplayTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayTarget"


# instance fields
.field private mIsViewFromTXCloudVideoView:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTAG:Ljava/lang/String;

.field private final mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

.field private mTextureView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mTxCloudVideoView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/ui/TXCloudVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    .line 45
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->c:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    .line 39
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->b:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    .line 33
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->a:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTAG:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    .line 5
    iget-object v0, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 6
    iget-object v0, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    .line 7
    iget-object v0, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    .line 8
    iget-object v0, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    .line 9
    iget-object v0, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    .line 10
    iget-boolean p1, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTAG:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    if-nez p1, :cond_0

    .line 15
    sget-object p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 18
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 19
    sget-object p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->b:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 21
    sget-object p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->c:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 22
    iput-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 23
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->a:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 26
    :cond_3
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    :goto_0
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/videobase/DisplayTarget;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-object v0

    .line 5
    :cond_1
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/TextureView;)V

    return-object v0

    .line 7
    :cond_2
    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/SurfaceView;)V

    return-object v0

    .line 9
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "object is unknown. object="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayTarget"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setVisibility$0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mUIHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/liteav/videobase/videobase/b;->a(Landroid/view/View;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    iget-object v3, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    .line 7
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSize()Lcom/tencent/liteav/base/util/q;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->b:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->a:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;->d:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 9
    :goto_1
    new-instance v2, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v2, v1, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-object v2
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurfaceView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTxCloudVideoView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTextureView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    return-object v0
.end method

.method public hideAll()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mIsViewFromTXCloudVideoView:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->setVisibility(Landroid/view/View;I)V

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->setVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public showAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->setVisibility(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTarget{mTargetType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mTargetType:Lcom/tencent/liteav/videobase/videobase/DisplayTarget$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTXCloudVideoView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextureView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
