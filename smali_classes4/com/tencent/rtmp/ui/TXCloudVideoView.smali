.class public Lcom/tencent/rtmp/ui/TXCloudVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/ui/TXCloudVideoView$b;,
        Lcom/tencent/rtmp/ui/TXCloudVideoView$a;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE_IN_DP:I = 0x46


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/ui/TXCloudVideoView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

.field private final mDashMargin:Landroid/graphics/Rect;

.field private final mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

.field private final mDeprecatedTextureViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableShowLog:Z

.field private mEnableTouchToFocus:Z

.field private mEnableZoom:Z

.field private mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

.field protected mGLContext:Ljava/lang/Object;

.field private final mHideIndicatorViewRunnable:Ljava/lang/Runnable;

.field private mLastScaleFactor:F

.field private mScaleFactor:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSurface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTAG:Ljava/lang/String;

.field private mTapListener:Lcom/tencent/rtmp/ui/a;

.field private mTopTextureView:Landroid/view/TextureView;

.field private mUserId:Ljava/lang/String;

.field private mVideoViewSetByUser:Landroid/view/TextureView;

.field private mZoomListener:Lcom/tencent/rtmp/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/SurfaceView;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TXCloudVideoView_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    .line 8
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashMargin:Landroid/graphics/Rect;

    .line 9
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDeprecatedTextureViewSet:Ljava/util/HashSet;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableTouchToFocus:Z

    .line 11
    new-instance v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;B)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    .line 12
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    const-string p2, ""

    .line 13
    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/tencent/rtmp/ui/c;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Ljava/lang/Runnable;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mHideIndicatorViewRunnable:Ljava/lang/Runnable;

    .line 15
    new-instance p2, Lcom/tencent/rtmp/ui/DashBoard;

    invoke-direct {p2, p1}, Lcom/tencent/rtmp/ui/DashBoard;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    if-eqz p3, :cond_0

    .line 16
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurfaceView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/SurfaceView;)V

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurface:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/SurfaceView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Lcom/tencent/rtmp/ui/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTapListener:Lcom/tencent/rtmp/ui/a;

    return-object p0
.end method

.method static synthetic access$lambda$0(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->hideIndicatorView()V

    return-void
.end method

.method private addViewInternal(Landroid/view/TextureView;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const-string v0, "addViewInternal,TextureView is null."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->updateTopTextureView()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "view has been added."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "view has been added to other parent view. parent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDeprecatedTextureViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private getTextureViewSetByUser()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    return-object v0
.end method

.method private hideIndicatorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isShowLogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableShowLog:Z

    return v0
.end method

.method static synthetic lambda$showFocusView$0(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->showFocusViewInternal(IIII)V

    return-void
.end method

.method private static px2dip(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private removeDeprecatedViews(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDeprecatedTextureViewSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->updateTopTextureView()V

    return-void
.end method

.method private removeViewInternal(Landroid/view/TextureView;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->updateTopTextureView()V

    .line 3
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDeprecatedTextureViewSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-ne p2, p0, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeDeprecatedViews(Landroid/view/TextureView;)V

    .line 6
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDeprecatedTextureViewSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "current view has been removed from the parent view. view="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eq p2, p0, :cond_4

    .line 10
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current view is not a child view of this view. parent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private repositionDashBoard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setShowLogCallback(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/ui/TXCloudVideoView$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private setTouchToFocusEnabled(ZLcom/tencent/rtmp/ui/a;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableTouchToFocus:Z

    .line 2
    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTapListener:Lcom/tencent/rtmp/ui/a;

    return-void
.end method

.method private setZoomEnabled(ZLcom/tencent/rtmp/ui/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setZoomEnabled: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    .line 3
    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoomListener:Lcom/tencent/rtmp/ui/b;

    return-void
.end method

.method private showFocusView(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/rtmp/ui/d;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showFocusViewInternal(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-ne p3, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    if-eq p4, p3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p4, v2

    const-string v0, "show indicator view at (%d,%d)"

    invoke-static {p3, v0, p4}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p3, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mHideIndicatorViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/high16 p3, 0x428c0000    # 70.0f

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float p4, p4, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 5
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {p1, v1, v3}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result p1

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {p2, v1, p1}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result p1

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Lcom/tencent/rtmp/ui/FocusIndicatorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/rtmp/ui/FocusIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    .line 10
    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-eq p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mFocusIndicatorView:Lcom/tencent/rtmp/ui/FocusIndicatorView;

    .line 17
    iget-object p2, p1, Lcom/tencent/rtmp/ui/FocusIndicatorView;->a:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mHideIndicatorViewRunnable:Ljava/lang/Runnable;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0x1

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const-string p2, "ignore show indicator view when view size changed"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTopTextureView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Landroid/view/TextureView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTopTextureView:Landroid/view/TextureView;

    if-eq v0, v1, :cond_2

    .line 6
    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTopTextureView:Landroid/view/TextureView;

    :cond_2
    return-void
.end method


# virtual methods
.method public addVideoView(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeViewInternal(Landroid/view/TextureView;Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addViewInternal(Landroid/view/TextureView;)V

    .line 3
    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    .line 4
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->repositionDashBoard()V

    return-void
.end method

.method public clearLastFrame(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public clearLog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tencent/rtmp/ui/DashBoard;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    iget-object v1, v0, Lcom/tencent/rtmp/ui/DashBoard;->b:Landroid/widget/TextView;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/tencent/rtmp/ui/DashBoard;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public disableLog(Z)V
    .locals 0

    return-void
.end method

.method public getHWVideoView()Landroid/view/TextureView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenGLContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurface:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "surface is null."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mSurfaceView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "surfaceView is null."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoView()Landroid/view/TextureView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mTopTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashMargin:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Lcom/tencent/rtmp/ui/DashBoard;->a(IIII)V

    .line 3
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->px2dip(Landroid/content/Context;F)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 p4, 0x403e000000000000L    # 30.0

    div-double/2addr p2, p4

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/DashBoard;->setStatusTextSize(F)V

    .line 4
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->px2dip(Landroid/content/Context;F)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 p4, 0x4039000000000000L    # 25.0

    div-double/2addr p2, p4

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/DashBoard;->setEventTextSize(F)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v2, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLastScaleFactor:F

    sub-float/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLastScaleFactor:F

    .line 4
    iget p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleFactor:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v2}, Lcom/tencent/liteav/base/util/g;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleFactor:F

    .line 5
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mZoomListener:Lcom/tencent/rtmp/ui/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/ui/b;->a(F)V

    :cond_1
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mLastScaleFactor:F

    .line 2
    iget-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableTouchToFocus:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 5
    iget-object v6, v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;->a:Landroid/graphics/Point;

    iput v2, v6, Landroid/graphics/Point;->x:I

    .line 6
    iput v3, v6, Landroid/graphics/Point;->y:I

    .line 7
    iput v4, v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;->b:I

    .line 8
    iput v5, v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$a;->c:I

    .line 9
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDelayedTapRunnable:Lcom/tencent/rtmp/ui/TXCloudVideoView$a;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    invoke-direct {p0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->hideIndicatorView()V

    .line 15
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableZoom:Z

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_3
    return v1

    .line 21
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeVideoView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeViewInternal(Landroid/view/TextureView;Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mVideoViewSetByUser:Landroid/view/TextureView;

    return-void
.end method

.method public setDashBoardMarginInPx(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashMargin:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 3
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 5
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mDashBoard:Lcom/tencent/rtmp/ui/DashBoard;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/tencent/rtmp/ui/DashBoard;->a(IIII)V

    return-void
.end method

.method public setDashBoardMarginInRatio(FFFF)V
    .locals 7

    new-instance v6, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/rtmp/ui/TXCloudVideoView$1;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;FFFF)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v6, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLogMargin(FFFF)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setDashBoardMarginInPx(IIII)V

    return-void
.end method

.method public setOpenGLContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public showLog(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mEnableShowLog:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;->mCallback:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView$b;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView$b;->onShowLog(Z)V

    :cond_1
    return-void
.end method
