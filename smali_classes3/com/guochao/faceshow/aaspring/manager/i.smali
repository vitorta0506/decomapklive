.class public Lcom/guochao/faceshow/aaspring/manager/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/i$i;
    }
.end annotation


# static fields
.field private static g:Lcom/guochao/faceshow/aaspring/manager/i;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/i$i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field private e:Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;

.field private f:Lbb/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/manager/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->k(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/manager/i;)Lcom/guochao/faceshow/aaspring/config/ServerConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)Lcom/guochao/faceshow/aaspring/config/ServerConfig;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    return-object p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->q()V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->m()V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->o()V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->n()V

    return-void
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->v()V

    return-void
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;)Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->e:Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;

    return-object p1
.end method

.method private k(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->calServerTimeDiff()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/i$i;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-interface {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/i$i;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->setLoginTime(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getE()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->setServerDiffTime(J)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/advertisement/checkShow"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$d;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/superExposure/status"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$g;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/shortVideo/checkRestBrowseCount"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$e;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/userLike/checkSuperLikeRestCount"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$f;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->b:Landroid/content/Context;

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$h;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->getSplashScreenInfo(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->x()V

    .line 3
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->q()V

    .line 4
    invoke-static {}, Lk8/a;->c()Lk8/a;

    move-result-object v0

    invoke-virtual {v0}, Lk8/a;->e()V

    return-void
.end method

.method public static u()Lcom/guochao/faceshow/aaspring/manager/i;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/manager/i;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/i;->g:Lcom/guochao/faceshow/aaspring/manager/i;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/manager/i;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/manager/i;->g:Lcom/guochao/faceshow/aaspring/manager/i;

    .line 4
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/i;->g:Lcom/guochao/faceshow/aaspring/manager/i;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private v()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/sensitive/words"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$c;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public onLogout()V
    .locals 0

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->y()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->DEFAULT:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    :goto_0
    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/i;->k(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/trade/bag/simpleList"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$b;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public registerOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->DEFAULT:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    return-object v0
.end method

.method public t()Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->e:Lcom/guochao/faceshow/aaspring/beans/GiftBagNumListBean;

    return-object v0
.end method

.method public unregisterOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->b:Landroid/content/Context;

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->DEFAULT:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    const-string v0, "userId"

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getE()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    if-eqz v0, :cond_0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/guochao/lib_core/feature/Feature;->loadCacheFirst(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->f:Lbb/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->f:Lbb/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i;->f:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->j()V

    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/lib_core/feature/Feature;->fetch()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "sys/config/getConfigList"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->b:Landroid/content/Context;

    const-string v2, "userToken"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/i$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/i$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/i;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->l()V

    return-void
.end method

.method public z()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/i;->a:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
