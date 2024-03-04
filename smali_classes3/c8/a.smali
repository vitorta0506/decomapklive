.class public Lc8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/a$g;,
        Lc8/a$h;
    }
.end annotation


# static fields
.field private static i:Lc8/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field d:Lc8/a$g;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lc8/a$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc8/a;->a:Z

    .line 3
    iput-boolean v0, p0, Lc8/a;->b:Z

    .line 4
    iput-boolean v0, p0, Lc8/a;->c:Z

    .line 5
    new-instance v1, Lc8/a$c;

    invoke-direct {v1, p0}, Lc8/a$c;-><init>(Lc8/a;)V

    iput-object v1, p0, Lc8/a;->d:Lc8/a$g;

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lc8/a;->e:Ljava/util/Set;

    .line 7
    iput-boolean v0, p0, Lc8/a;->f:Z

    .line 8
    invoke-direct {p0}, Lc8/a;->t()V

    return-void
.end method

.method static synthetic a(Lc8/a;)V
    .locals 0

    invoke-direct {p0}, Lc8/a;->v()V

    return-void
.end method

.method static synthetic b(Lc8/a;)Z
    .locals 0

    iget-boolean p0, p0, Lc8/a;->a:Z

    return p0
.end method

.method static synthetic c(Lc8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/a;->f:Z

    return p1
.end method

.method static synthetic d(Lc8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/a;->a:Z

    return p1
.end method

.method static synthetic e(Lc8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/a;->b:Z

    return p1
.end method

.method static synthetic f(Lc8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/a;->c:Z

    return p1
.end method

.method static synthetic g(Lc8/a;)Lc8/a$h;
    .locals 0

    iget-object p0, p0, Lc8/a;->g:Lc8/a$h;

    return-object p0
.end method

.method static synthetic h(Lc8/a;Landroid/app/Activity;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc8/a;->m(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic i(Lc8/a;)V
    .locals 0

    invoke-direct {p0}, Lc8/a;->t()V

    return-void
.end method

.method static synthetic j(Lc8/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/a;->s(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    return-void
.end method

.method static synthetic k(Lc8/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lc8/a;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic l(Lc8/a;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/a;->n(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    return-void
.end method

.method private m(Landroid/app/Activity;J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;-><init>(JJ)V

    .line 3
    invoke-direct {p0, p1, v2}, Lc8/a;->n(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    return-void
.end method

.method private n(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&unixTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;->getUnixTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "&sign="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;->getUnixTime()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&startTime="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&MD5="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MD5"

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    const-string v2, "tokens/live/v2/userLookAdvertisement"

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;->getUnixTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unixTime"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "signature"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lc8/a$d;

    invoke-direct {v1, p0, p1, p2}, Lc8/a$d;-><init>(Lc8/a;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "module_sever_config_time"

    const-string v1, "key_select_advertisement"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    const-string v2, "zune"

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lc8/a;->c:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc8/a;->d:Lc8/a$g;

    invoke-virtual {v0, p1}, Lc8/a$g;->a(Landroid/app/Activity;)V

    .line 5
    iget-boolean p1, p0, Lc8/a;->a:Z

    if-nez p1, :cond_0

    const-string p1, "\u5f00\u59cb\u521d\u59cb\u5316"

    .line 6
    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lc8/a;->t()V

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u7ecf\u51c6\u5907\u597d\u4e86"

    .line 8
    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lc8/a;->g:Lc8/a$h;

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 10
    invoke-interface {p1, v0}, Lc8/a$h;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u770b\u5e7f\u544a\u7684\u6b21\u6570\u8d85\u9650\u4e86"

    .line 11
    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lc8/a;->g:Lc8/a$h;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Lc8/a$h;->onError()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static r()Lc8/a;
    .locals 2

    .line 1
    sget-object v0, Lc8/a;->i:Lc8/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc8/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc8/a;->i:Lc8/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc8/a;

    invoke-direct {v1}, Lc8/a;-><init>()V

    sput-object v1, Lc8/a;->i:Lc8/a;

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
    sget-object v0, Lc8/a;->i:Lc8/a;

    return-object v0
.end method

.method private s(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/a;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean p2, p0, Lc8/a;->f:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lc8/a;->f:Z

    .line 4
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/gift/NewSignGetter;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/NewSignGetter;

    new-instance v0, Lc8/a$e;

    invoke-direct {v0, p0, p1}, Lc8/a$e;-><init>(Lc8/a;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/NewSignGetter;->getNewSign(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc8/a;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc8/a;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc8/a;->b:Z

    .line 3
    new-instance v0, Lcom/unity3d/ads/metadata/MetaData;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "privacy.consent"

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 6
    new-instance v0, Lcom/unity3d/ads/metadata/MetaData;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    const-string v2, "privacy.useroveragelimit"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Lc8/a$a;

    invoke-direct {v1, p0}, Lc8/a$a;-><init>(Lc8/a;)V

    const-string v2, "2717418"

    invoke-static {v0, v2, v1}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private v()V
    .locals 2

    new-instance v0, Lc8/a$b;

    invoke-direct {v0, p0}, Lc8/a$b;-><init>(Lc8/a;)V

    const-string v1, "rewardedVideo"

    invoke-static {v1, v0}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method


# virtual methods
.method public p(Z)V
    .locals 3

    const-string v0, "HidePermanentlyAds"

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lc8/a;->h:I

    return v0
.end method

.method public u()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HidePermanentlyAds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-nez v6, :cond_1

    return v5

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v6, v3, v0

    if-lez v6, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public w(Landroid/app/Activity;Lc8/a$h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc8/a;->g:Lc8/a$h;

    .line 2
    invoke-direct {p0, p1}, Lc8/a;->o(Landroid/app/Activity;)V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lc8/a;->h:I

    return-void
.end method

.method public y(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc8/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "look_ads_click"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc8/a;->d:Lc8/a$g;

    const-string v1, "rewardedVideo"

    invoke-static {p1, v1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc8/a;->d:Lc8/a$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/a$g;->a(Landroid/app/Activity;)V

    .line 2
    iput-object v1, p0, Lc8/a;->g:Lc8/a$h;

    return-void
.end method
