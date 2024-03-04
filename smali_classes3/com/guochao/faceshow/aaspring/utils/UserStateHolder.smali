.class public Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isLiveOnHome:Z

.field private static isLivingInMic:Z

.field private static isPKPrepare:Z

.field private static isPkingInLive:Z

.field private static isPrivateOrMultiLiving:Z

.field private static isRelease:Z

.field private static sLiving:Z

.field private static sWatchingLive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isRelease:Z

    return v0
.end method

.method public static checkLivePkState()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Ly7/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly7/l;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isIsPKPrepare()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPkingInLive()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, v0, Ly7/l;->b:Z

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPrivateOrMultiLiving()Z

    move-result v0

    return v0
.end method

.method public static checkLiveState(IIII)Z
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Ly7/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly7/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Ly7/l;->a:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_2
    return v1

    :cond_3
    if-eqz v0, :cond_5

    .line 5
    iget-boolean p0, v0, Ly7/l;->b:Z

    if-eqz p0, :cond_5

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_4
    return v1

    .line 8
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_6
    return v1

    .line 11
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->q()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static checkLocalLiving(Lr7/a$a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a$a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isRelease:Z

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Lr7/a$a;->a(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLocalLiving()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocalLiving liveId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiveRoom\uff1a"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/live/newLive/finishLive"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "liveId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "type"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder$1;-><init>(Lr7/a$a;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 9
    invoke-interface {p0, v0}, Lr7/a$a;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static isIsPKPrepare()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPKPrepare:Z

    return v0
.end method

.method public static isLiveOnHome()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiveOnHome:Z

    return v0
.end method

.method public static isLiving()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sLiving:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingOld()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLivingInMic()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic:Z

    return v0
.end method

.method private static isLivingOld()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Ly7/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly7/l;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Ly7/l;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLocalLiving()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "living"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPkingInLive()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPkingInLive:Z

    return v0
.end method

.method public static isPrivateOrMultiLiving()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPrivateOrMultiLiving:Z

    return v0
.end method

.method public static isWatchingLive()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sWatchingLive:Z

    return v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isRelease:Z

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sLiving:Z

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sWatchingLive:Z

    .line 3
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiveOnHome:Z

    .line 4
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic:Z

    return-void
.end method

.method public static setIsLiveOnHome(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiveOnHome:Z

    return-void
.end method

.method public static setIsLivingInMic(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic:Z

    return-void
.end method

.method public static setIsPKPrepare(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPKPrepare:Z

    return-void
.end method

.method public static setIsPkingInLive(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPkingInLive:Z

    return-void
.end method

.method public static setIsPrivateOrMultiLiving(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPrivateOrMultiLiving:Z

    return-void
.end method

.method public static setLiving(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sLiving:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isPrivateOrMultiLiving:Z

    :cond_0
    return-void
.end method

.method public static setLocalLiving(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "living"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWatchingLive(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->sWatchingLive:Z

    return-void
.end method
