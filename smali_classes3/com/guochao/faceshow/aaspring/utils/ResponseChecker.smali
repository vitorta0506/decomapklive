.class public Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkFreeze(ILorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x1

    const v1, 0x9c41

    if-eq p1, v1, :cond_7

    const v1, 0x9c42

    if-ne p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const v1, 0x9c44

    const-wide/16 v2, 0x3e8

    if-ne p1, v1, :cond_1

    .line 1
    new-instance p1, Ly7/b;

    invoke-direct {p1}, Ly7/b;-><init>()V

    .line 2
    iput-boolean v0, p1, Ly7/b;->f:Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$2;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_1
    const v1, 0x9c45

    if-ne p1, v1, :cond_2

    .line 5
    new-instance p1, Ly7/b;

    invoke-direct {p1}, Ly7/b;-><init>()V

    .line 6
    iput-boolean v0, p1, Ly7/b;->f:Z

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$3;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_2
    const p2, 0x9c46

    if-ne p1, p2, :cond_3

    .line 9
    new-instance p1, Ly7/b;

    invoke-direct {p1}, Ly7/b;-><init>()V

    .line 10
    iput-boolean v0, p1, Ly7/b;->f:Z

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$4;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$4;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_3
    const p2, 0x9c4d

    if-ne p1, p2, :cond_4

    .line 13
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$5;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$5;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    return v0

    :cond_4
    const p2, 0x1388d

    if-ne p1, p2, :cond_5

    .line 14
    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$6;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$6;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V

    invoke-static {p2}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    const p2, 0x1388e

    if-ne p1, p2, :cond_6

    .line 15
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$7;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$7;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_7
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    return v0
.end method
