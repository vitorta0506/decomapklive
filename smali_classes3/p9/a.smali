.class public Lp9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/a$f;,
        Lp9/a$e;
    }
.end annotation


# static fields
.field private static f:Lp9/a;


# instance fields
.field private a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getOneToOneGenderSelectPrice()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getOneToOneGenderSelectPrice()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xa

    :goto_1
    iput v0, p0, Lp9/a;->b:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getRatioFace2face()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getRatioFace2face()I

    move-result v0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x14

    :goto_3
    iput v0, p0, Lp9/a;->c:I

    .line 6
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lp9/a;->e:Landroidx/collection/ArrayMap;

    return-void
.end method

.method static synthetic a(Lp9/a;)Lcom/guochao/faceshow/mine/model/MyWalletBean;
    .locals 0

    iget-object p0, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    return-object p0
.end method

.method public static g()Lp9/a;
    .locals 2

    .line 1
    sget-object v0, Lp9/a;->f:Lp9/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lp9/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lp9/a;->f:Lp9/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lp9/a;

    invoke-direct {v1}, Lp9/a;-><init>()V

    sput-object v1, Lp9/a;->f:Lp9/a;

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
    sget-object v0, Lp9/a;->f:Lp9/a;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;->b(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public B(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp9/a;->C(IZ)V

    return-void
.end method

.method public C(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p2}, Lp9/a;->u(Lcom/guochao/faceshow/mine/model/MyWalletBean;Z)V

    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lp9/a;->B(I)V

    return v0
.end method

.method public c(Lp9/a$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp9/a;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lp9/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lp9/a;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lp9/a;->B(I)V

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e()Lcom/guochao/faceshow/mine/model/MyWalletBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;-><init>()V

    iput-object v0, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    .line 3
    :cond_0
    iget-object v0, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lp9/a$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp9/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lp9/a;->b:I

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAudioDiamond()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    if-eqz v1, :cond_0

    iget v1, p0, Lp9/a;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getVideoDiamond()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(I)Z
    .locals 1

    invoke-virtual {p0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lp9/a;->e:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp9/a;->e:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp9/a;->refreshWalletData(Lp9/a$f;)V

    return-void
.end method

.method public p(Landroidx/lifecycle/LifecycleOwner;IZLp9/a$f;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    return-void
.end method

.method public q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V
    .locals 14

    move-object v9, p0

    move/from16 v8, p2

    if-nez p3, :cond_0

    .line 1
    iget-object v0, v9, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v8, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, v9, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v0

    if-lt v0, v8, :cond_2

    .line 2
    :cond_1
    invoke-interface/range {p5 .. p5}, Lp9/a$f;->onResponse()V

    return-void

    .line 3
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v11, v0, [Z

    .line 5
    new-instance v12, Lp9/a$b;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, v11

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lp9/a$b;-><init>(Lp9/a;Landroidx/lifecycle/LifecycleOwner;[ZZILp9/a$f;Z)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v13, Lp9/a$c;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object v4, v12

    move/from16 v5, p3

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lp9/a$c;-><init>(Lp9/a;Landroidx/lifecycle/LifecycleOwner;[ZLjava/lang/Runnable;ZILp9/a$f;Z)V

    invoke-virtual {v10, v13}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public r(Lp9/a$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public refreshWalletData(Lp9/a$f;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lp9/a$a;

    invoke-direct {v1, p0, p1}, Lp9/a$a;-><init>(Lp9/a;Lp9/a$f;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public s()V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp9/a;->u(Lcom/guochao/faceshow/mine/model/MyWalletBean;Z)V

    return-void
.end method

.method public u(Lcom/guochao/faceshow/mine/model/MyWalletBean;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;-><init>()V

    iput-object p1, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v1

    long-to-int p1, v1

    const-string v1, "userFB"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lp9/a;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object p2, p0, Lp9/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 6
    iget-object p2, p0, Lp9/a;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp9/a$e;

    iget-object v0, p0, Lp9/a;->a:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lp9/a$e;->onDiamondsChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public v(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->b(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    move-result-object p1

    return-object p1
.end method

.method public w(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp9/a;->x(Landroid/app/Activity;I)V

    return-void
.end method

.method public x(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lp9/a;->y(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public y(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lp9/a$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lp9/a$d;-><init>(Lp9/a;Landroid/app/Activity;ILjava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const p2, 0x7f12016a

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->l()Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method public z(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lp9/a;->y(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method
