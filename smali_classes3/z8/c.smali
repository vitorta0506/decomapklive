.class public Lz8/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lb8/d$a;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz8/c$f;,
        Lz8/c$e;,
        Lz8/c$d;
    }
.end annotation


# static fields
.field private static y:Lz8/c;


# instance fields
.field private a:Landroid/os/Handler;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/widget/FrameLayout;

.field f:Landroid/view/SurfaceView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/view/View;

.field j:Lz8/c$d;

.field public k:Lz8/b;

.field private l:Lz8/b;

.field m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field o:Lz8/a;

.field p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

.field q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

.field r:Lcom/opensource/svgaplayer/SVGAImageView;

.field s:Lz8/c$f;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Runnable;

.field w:Lcom/guochao/player/GCLivePlayer;

.field private x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz8/c$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lz8/c;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lz8/c$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz8/c$f;-><init>(Lz8/c;Lz8/c$a;)V

    iput-object v0, p0, Lz8/c;->s:Lz8/c$f;

    .line 4
    new-instance v0, Lz8/c$b;

    invoke-direct {v0, p0}, Lz8/c$b;-><init>(Lz8/c;)V

    iput-object v0, p0, Lz8/c;->v:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz8/c;->x:Ljava/util/Set;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d02cf

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a020d

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a07ba

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    iput-object v1, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const v1, 0x7f0a0104

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    const v1, 0x7f0a093d

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lz8/c;->h:Landroid/widget/ImageView;

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    iget-object v2, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v1, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    .line 12
    iget-object v2, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f0a0254

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Landroid/view/SurfaceView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 17
    iget-object v1, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 18
    iget-object v1, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v3, -0x2

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 19
    iget-object v1, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    const v1, 0x7f0a070b

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v1, p0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v3, -0x1

    .line 21
    invoke-virtual {v1, v3}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Lz8/c$a;

    invoke-direct {v4, p0}, Lz8/c$a;-><init>(Lz8/c;)V

    const-string v5, "loading_white_float"

    invoke-virtual {v1, v3, v5, v4, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 23
    new-instance v1, Lz8/a;

    invoke-direct {v1}, Lz8/a;-><init>()V

    iput-object v1, p0, Lz8/c;->o:Lz8/a;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v0, p0, Lz8/c;->i:Landroid/view/View;

    const v1, 0x7f0a0e07

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 28
    new-instance v1, Lz8/c$d;

    invoke-direct {v1, v0}, Lz8/c$d;-><init>(Landroid/view/ViewStub;)V

    iput-object v1, p0, Lz8/c;->j:Lz8/c$d;

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    return-void
.end method

.method private A(Landroid/app/Activity;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Lz8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lz8/c;->P(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0, v2, v1}, Lz8/c;->J(ZZ)V

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    if-ne v0, v3, :cond_4

    .line 8
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-direct {p0, p1}, Lz8/c;->q(Lz8/b;)[I

    move-result-object p1

    .line 9
    iget-object p2, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    .line 10
    aget v1, p1, v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    aget p1, p1, v2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 14
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, p1

    const/high16 p1, 0x425c0000    # 55.0f

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16
    iget-object p1, p0, Lz8/c;->i:Landroid/view/View;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 17
    :cond_4
    :try_start_0
    iget-object v1, p0, Lz8/c;->i:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :cond_5
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-direct {p0, v0, p2}, Lz8/c;->B(Lz8/b;Z)V

    .line 19
    iget-object p2, p0, Lz8/c;->o:Lz8/a;

    invoke-virtual {p2, p1}, Lz8/a;->a(Landroid/app/Activity;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private B(Lz8/b;Z)V
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3
    invoke-direct {p0, p1}, Lz8/c;->q(Lz8/b;)[I

    move-result-object v2

    const/4 v6, 0x2

    const/16 v3, 0x8

    .line 4
    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v4

    sget v5, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    const/16 v7, 0x2008

    if-ne v4, v5, :cond_0

    const/16 v3, 0x2008

    .line 5
    :cond_0
    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isPrivateLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v3

    .line 6
    :goto_0
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    const/4 v8, -0x2

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x30

    .line 7
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v2, 0x800033

    .line 8
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    iget-object v2, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    .line 10
    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 12
    :cond_2
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, p2

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, p2

    const/high16 p2, 0x425c0000    # 55.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 14
    :goto_1
    iget-object p2, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private G(I)I
    .locals 1

    rem-int/lit8 v0, p1, 0x4

    sub-int/2addr p1, v0

    return p1
.end method

.method private I()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lz8/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lz8/c;->i:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5
    iput-object v1, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private P(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->shouldShowLiveFloatWindow()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of p1, p1, Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lz8/c;->j:Lz8/c$d;

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz8/c$d;->b(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 3
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/b;->u(I)V

    .line 4
    invoke-direct {p0}, Lz8/c;->S()V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method private S()V
    .locals 7

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-direct {p0, v0}, Lz8/c;->q(Lz8/b;)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 3
    aget v3, v0, v2

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    .line 4
    aget v5, v0, v4

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v5, v6

    .line 5
    aget v2, v0, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    aget v0, v0, v4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lz8/c;->i:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lz8/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz8/c;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lz8/c;)V
    .locals 0

    invoke-direct {p0}, Lz8/c;->R()V

    return-void
.end method

.method static synthetic f(Lz8/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz8/c;->t:Z

    return p1
.end method

.method static synthetic g(Lz8/c;)V
    .locals 0

    invoke-direct {p0}, Lz8/c;->v()V

    return-void
.end method

.method static synthetic i(Lz8/c;)V
    .locals 0

    invoke-direct {p0}, Lz8/c;->S()V

    return-void
.end method

.method static synthetic j(Lz8/c;)V
    .locals 0

    invoke-direct {p0}, Lz8/c;->Q()V

    return-void
.end method

.method static synthetic k(Lz8/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz8/c;->u:Z

    return p1
.end method

.method private l(Lz8/b;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lz8/b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lz8/b;->a()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 3
    iget-object p1, p0, Lz8/c;->a:Landroid/os/Handler;

    iget-object v4, p0, Lz8/c;->v:Ljava/lang/Runnable;

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static o()Lz8/c;
    .locals 2

    .line 1
    sget-object v0, Lz8/c;->y:Lz8/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lz8/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lz8/c;->y:Lz8/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lz8/c;

    invoke-direct {v1}, Lz8/c;-><init>()V

    sput-object v1, Lz8/c;->y:Lz8/c;

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
    sget-object v0, Lz8/c;->y:Lz8/c;

    return-object v0
.end method

.method private q(Lz8/b;)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2
    div-int/2addr v2, v0

    .line 3
    invoke-virtual {p1}, Lz8/b;->g()I

    move-result p1

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    if-eq p1, v0, :cond_0

    .line 4
    div-int/2addr v2, v0

    aput v2, v1, v4

    int-to-float p1, v2

    mul-float p1, p1, v3

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    aput p1, v1, v5

    .line 5
    iget-object p1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    const v0, 0x7f0f03f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41a80000    # 21.0f

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    sub-int v0, v2, v0

    invoke-direct {p0, v0}, Lz8/c;->G(I)I

    move-result v0

    aput v0, v1, v4

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lz8/c;->G(I)I

    move-result p1

    aput p1, v1, v5

    .line 8
    iget-object p1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    const v0, 0x7f0f03f5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    aput v2, v1, v4

    int-to-float p1, v2

    mul-float p1, p1, v3

    const/high16 v0, 0x41900000    # 18.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    aput p1, v1, v5

    .line 9
    iget-object p1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    const v0, 0x7f0f03f6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-object v1
.end method

.method private v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lz8/c;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lz8/c;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lz8/c;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 4
    iget-object v0, p0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lz8/c;->R()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    iget-object v2, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v2

    const-string v4, "startTime"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v2, "tokens/live/newLive/getLiveInfo"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "likeNum"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 9
    invoke-virtual {v1, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    .line 10
    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lz8/c$c;

    invoke-direct {v1, p0}, Lz8/c$c;-><init>(Lz8/c;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public D(Lz8/b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz8/c;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 3
    iget-object v0, p0, Lz8/c;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lz8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lz8/c;->u:Z

    iput-boolean v0, p0, Lz8/c;->t:Z

    .line 6
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getRoomID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getRoomID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->k()V

    .line 9
    :cond_2
    iput-object p1, p0, Lz8/c;->k:Lz8/b;

    .line 10
    iget-object v1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1, v2}, Lz8/c;->A(Landroid/app/Activity;Z)V

    .line 12
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    if-nez v1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object v1, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    iget-object v3, p0, Lz8/c;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/View;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    iget-object v3, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 16
    :goto_0
    iget-object v1, p0, Lz8/c;->j:Lz8/c$d;

    invoke-virtual {v1}, Lz8/c$d;->a()V

    .line 17
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    iget-object v1, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    iget-object v3, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v1, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    .line 20
    iget-object v3, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object v1, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->h:Z

    .line 22
    iget-object v3, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v3}, Lz8/b;->b()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v4}, Lz8/b;->e()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    goto :goto_1

    .line 23
    :cond_5
    iget-object v1, p0, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    :goto_1
    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    iget-object v3, p0, Lz8/c;->s:Lz8/c$f;

    invoke-virtual {v1, v3}, Lcom/guochao/player/GCLivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 25
    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lz8/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 26
    iget-object v1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    .line 28
    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iput-boolean v2, p0, Lz8/c;->t:Z

    .line 30
    :cond_7
    invoke-direct {p0}, Lz8/c;->z()V

    goto/16 :goto_4

    .line 31
    :cond_8
    invoke-virtual {p1}, Lz8/b;->i()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/player/GCLivePlayer;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 32
    :cond_9
    iget-object p1, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    .line 33
    iput-boolean v2, p0, Lz8/c;->t:Z

    .line 34
    iput-boolean v2, p0, Lz8/c;->u:Z

    .line 35
    invoke-direct {p0}, Lz8/c;->v()V

    goto :goto_4

    .line 36
    :cond_a
    :goto_3
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 38
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 39
    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v5}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 40
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 41
    :cond_c
    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v3}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->buildRoomInfo()Lcom/guochao/user/RoomInfo;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/guochao/player/GCLivePlayer;->startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V

    .line 42
    iget-object p1, p0, Lz8/c;->e:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    .line 43
    iget-object p1, p0, Lz8/c;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iput-boolean v2, p0, Lz8/c;->u:Z

    .line 45
    invoke-direct {p0}, Lz8/c;->R()V

    .line 46
    :goto_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    :cond_d
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->h()Z

    move-result p1

    if-nez p1, :cond_e

    .line 49
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->joinGroup(Ljava/lang/String;)V

    .line 50
    :cond_e
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lz8/c;->c:J

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz8/c;->b:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lz8/c;->w:Lcom/guochao/player/GCLivePlayer;

    return-void
.end method

.method public J(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowedFloatFromLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz8/b;->p(Z)V

    .line 4
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->k()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iget-object v0, p0, Lz8/c;->s:Lz8/c$f;

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lz8/c;->I()V

    .line 12
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowedFloatFromLiveRoom()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lz8/c;->k:Lz8/b;

    :cond_4
    if-nez p2, :cond_5

    .line 14
    iget-object p1, p0, Lz8/c;->x:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz8/c$e;

    .line 15
    invoke-interface {p2}, Lz8/c$e;->onCloseFloatLive()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public N(Lz8/b;)V
    .locals 0
    .param p1    # Lz8/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz8/c;->l:Lz8/b;

    return-void
.end method

.method public O(Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz8/c;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public blackEvent(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLACK_NAME_ADD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "userId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 7
    invoke-static {p1, v1, v1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W2(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setShowedFloatFromLiveRoom(Z)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lz8/c;->J(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz8/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public n()Lcom/guochao/player/GCLivePlayer;
    .locals 1

    iget-object v0, p0, Lz8/c;->w:Lcom/guochao/player/GCLivePlayer;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lz8/c;->J(ZZ)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object v0, p0, Lz8/c;->l:Lz8/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 7
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v0, :cond_5

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->shouldShowLiveFloatWindow()Z

    move-result p1

    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Lz8/c;->l:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowedFloatFromLiveRoom()Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lz8/c;->l:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 12
    iget-object p1, p0, Lz8/c;->l:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v2, v3}, Lz8/c;->J(ZZ)V

    .line 14
    iput-object v1, p0, Lz8/c;->l:Lz8/b;

    .line 15
    iput-object v1, p0, Lz8/c;->k:Lz8/b;

    :cond_4
    return-void

    .line 16
    :cond_5
    iget-object p1, p0, Lz8/c;->l:Lz8/b;

    iput-object p1, p0, Lz8/c;->k:Lz8/b;

    .line 17
    invoke-virtual {p0, p1}, Lz8/c;->D(Lz8/b;)V

    .line 18
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-direct {p0, p1}, Lz8/c;->l(Lz8/b;)V

    .line 19
    iput-object v1, p0, Lz8/c;->l:Lz8/b;

    goto :goto_0

    .line 20
    :cond_6
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_8

    .line 21
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 22
    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q:Z

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    .line 24
    invoke-virtual {p0, v3, v3}, Lz8/c;->J(ZZ)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->R1(Lz8/b;)V

    .line 26
    iput-boolean v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q:Z

    :cond_7
    return-void

    .line 27
    :cond_8
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_a

    .line 28
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v0, :cond_a

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    .line 30
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->shouldShowLiveFloatWindow()Z

    move-result v0

    if-nez v0, :cond_a

    .line 31
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowedFloatFromLiveRoom()Z

    move-result p1

    if-nez p1, :cond_9

    .line 32
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 33
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v2, v3}, Lz8/c;->J(ZZ)V

    .line 35
    iput-object v1, p0, Lz8/c;->l:Lz8/b;

    .line 36
    iput-object v1, p0, Lz8/c;->k:Lz8/b;

    :cond_9
    return-void

    .line 37
    :cond_a
    invoke-direct {p0, p1, v3}, Lz8/c;->A(Landroid/app/Activity;Z)V

    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0a020d

    if-eq p1, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lz8/c;->u(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1}, Lz8/c;->J(ZZ)V

    .line 4
    iput-object v0, p0, Lz8/c;->k:Lz8/b;

    .line 5
    sget-object p1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/SigninManager;->releaseWatchLiveListener()V

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->setShowIcon(Z)V

    :goto_0
    return-void
.end method

.method public onLogout()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz8/c;->J(ZZ)V

    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    if-eqz v0, :cond_1c

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_c

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "LIVE_SCREENSHOT_BTN_SWITCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "LIVE_UPDATE_LINKMIC_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "LIVE_SEND_GIFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "LIVE_REMOVE_USER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "LOCAL_GROUP_DISSMISS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "LIVE_VOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "LIVE_LINKMIC_VOICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "LIVE_LINKMIC_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "LIVE_CLOSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    const-string v0, "2"

    const-string v2, "1"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_c

    .line 7
    :pswitch_0
    iget-object v0, p0, Lz8/c;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_c

    return-void

    .line 8
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_d

    .line 9
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_d
    const/16 v1, 0x2008

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 11
    :goto_1
    iget-object v1, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 12
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz p1, :cond_e

    .line 14
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    sget v1, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setScreenShotSwitch(I)V

    goto :goto_2

    .line 15
    :cond_e
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    sget v1, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setScreenShotSwitch(I)V

    .line 16
    :cond_f
    :goto_2
    iget-object p1, p0, Lz8/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lz8/c;->i:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 17
    :pswitch_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    .line 18
    iget-object v0, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    .line 19
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz8/b;->o(Ljava/util/List;)V

    .line 20
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz8/b;->s(J)V

    return-void

    .line 21
    :pswitch_2
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getMessages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setMessages(Ljava/util/List;)V

    .line 24
    :cond_10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 25
    :pswitch_3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    .line 27
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v1

    if-ne v1, v5, :cond_12

    const/4 v1, 0x1

    goto :goto_4

    :cond_12
    const/4 v1, 0x0

    .line 28
    :goto_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    move-result p1

    if-ne p1, v4, :cond_13

    const/4 p1, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, 0x0

    .line 29
    :goto_5
    iget-object v2, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 30
    iget-object v2, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 31
    invoke-static {v2, v0, v1, p1, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W2(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    :cond_14
    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setShowedFloatFromLiveRoom(Z)V

    .line 33
    invoke-virtual {p0, v6, v7}, Lz8/c;->J(ZZ)V

    return-void

    .line 34
    :pswitch_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;

    .line 35
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;->getGroupId()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 37
    invoke-direct {p0}, Lz8/c;->Q()V

    goto/16 :goto_c

    .line 38
    :pswitch_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    .line 39
    iget-object v0, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    if-eqz v0, :cond_15

    .line 40
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    :cond_15
    return-void

    .line 41
    :pswitch_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v3}, Lz8/b;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 43
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_18

    .line 44
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 45
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 46
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_16
    move-object v0, v2

    :goto_7
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setVoiceStatus(Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 47
    :cond_18
    :goto_8
    iget-object v0, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    return-void

    .line 48
    :pswitch_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v3}, Lz8/b;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 50
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_1b

    .line 51
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 52
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 53
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_19

    goto :goto_a

    :cond_19
    move-object v0, v2

    :goto_a
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setMatchType(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 54
    :cond_1b
    :goto_b
    iget-object v0, p0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    return-void

    .line 55
    :pswitch_8
    invoke-direct {p0}, Lz8/c;->Q()V

    nop

    :cond_1c
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x650b6f3b -> :sswitch_9
        -0x2d06b08a -> :sswitch_8
        -0x2d03e3d3 -> :sswitch_7
        -0x1bcd7233 -> :sswitch_6
        -0x10f2a28b -> :sswitch_5
        0xc35e7d3 -> :sswitch_4
        0x193433f4 -> :sswitch_3
        0x35fbcda3 -> :sswitch_2
        0x47dcdac6 -> :sswitch_1
        0x60fb43fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public registerOnFloatLiveListener(Lz8/c$e;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz8/c;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public screenShotChange(Ly7/k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/activity/MainActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result p1

    sget v0, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f1204c7

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    .line 3
    invoke-virtual {v0}, Lz8/b;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lz8/c;->b:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Lz8/b;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lz8/c;->c:J

    .line 5
    invoke-virtual {v0}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    iput-object v1, p0, Lz8/c;->w:Lcom/guochao/player/GCLivePlayer;

    .line 6
    iget-object v1, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    .line 7
    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v1}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v2}, Lz8/b;->g()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLaunchFromFloatWindow(Z)V

    .line 10
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setPkModeWhenFloatWindow(Z)V

    .line 11
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setInPkMode(Z)V

    const/4 v6, 0x0

    .line 12
    :goto_1
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 13
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 14
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v7, v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLaunchFromFloatWindow(Z)V

    .line 15
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v7, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setPkModeWhenFloatWindow(Z)V

    .line 16
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v6, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setInPkMode(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_2
    :goto_2
    iget-object v2, p0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v2}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v2

    iget-object v6, p0, Lz8/c;->s:Lz8/c$f;

    invoke-virtual {v2, v6}, Lcom/guochao/player/GCLivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    .line 18
    invoke-virtual {p0, v4, v5}, Lz8/c;->J(ZZ)V

    .line 19
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->setFloatTouchLiveRoom(Z)V

    .line 20
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowedFloatFromLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from_float"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {v0, p1}, Lz8/b;->r(Ljava/util/List;)V

    .line 23
    :cond_4
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 24
    :goto_3
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_6

    if-ne v4, v5, :cond_5

    .line 25
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setMessages(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 27
    :cond_6
    :goto_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v2

    invoke-virtual {v0}, Lz8/b;->d()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->i(Landroid/content/Context;Ljava/util/List;IIIZ)V

    :cond_7
    :goto_5
    return-void
.end method

.method public unregisterOnFloatLiveListener(Lz8/c$e;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz8/c;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public w(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz8/c;->l:Lz8/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lz8/c;->l:Lz8/b;

    .line 3
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public x(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz8/c;->k:Lz8/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    .line 3
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
