.class public Lc8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/b$c;
    }
.end annotation


# static fields
.field private static f:Lc8/b;


# instance fields
.field protected a:Lcom/guochao/faceshow/promotion/data/PromotionData;

.field private b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc8/b$c;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/b;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lc8/b;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lc8/b;->p(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lc8/b;)Lcom/guochao/faceshow/bean/LiveActivityDialogBean;
    .locals 0

    iget-object p0, p0, Lc8/b;->b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    return-object p0
.end method

.method static synthetic c(Lc8/b;Lcom/guochao/faceshow/bean/LiveActivityDialogBean;)Lcom/guochao/faceshow/bean/LiveActivityDialogBean;
    .locals 0

    iput-object p1, p0, Lc8/b;->b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    return-object p1
.end method

.method static synthetic d(Lc8/b;)Z
    .locals 0

    iget-boolean p0, p0, Lc8/b;->d:Z

    return p0
.end method

.method static synthetic e(Lc8/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/b;->d:Z

    return p1
.end method

.method static synthetic f(Lc8/b;)Z
    .locals 0

    iget-boolean p0, p0, Lc8/b;->c:Z

    return p0
.end method

.method static synthetic g(Lc8/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc8/b;->c:Z

    return p1
.end method

.method public static k()Lc8/b;
    .locals 2

    .line 1
    sget-object v0, Lc8/b;->f:Lc8/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc8/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc8/b;->f:Lc8/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc8/b;

    invoke-direct {v1}, Lc8/b;-><init>()V

    sput-object v1, Lc8/b;->f:Lc8/b;

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
    sget-object v0, Lc8/b;->f:Lc8/b;

    return-object v0
.end method

.method private p(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localActivityTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftUrl()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3}, Lc8/b;->t(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->backgroundImg:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 9
    invoke-direct {p0, v2}, Lc8/b;->t(Ljava/lang/String;)V

    .line 10
    :cond_3
    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->floatIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11
    invoke-direct {p0, v1}, Lc8/b;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/g;->c1()Ls0/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private v(Ljava/lang/String;II)V
    .locals 4

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 3
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftId()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 7
    invoke-virtual {v2, p3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setSendCount(I)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)V
    .locals 10

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->getOtherAppActivityGiftList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget v4, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    iget-object v4, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    .line 10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;

    .line 12
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getGiftId()I

    move-result v8

    invoke-virtual {v5}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftId()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 13
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getSendCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setSendCount(I)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public h(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z
    .locals 1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFullScreenActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 4
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j()Lcom/guochao/faceshow/promotion/data/PromotionData;
    .locals 1

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/b;->b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->getLiveFrame()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/b;->b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->getLiveFrame()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    xor-int/2addr v0, v1

    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    xor-int/2addr v0, v1

    return v0
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/appactivity/findFrameList"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lc8/b$b;

    invoke-direct {v1, p0}, Lc8/b$b;-><init>(Lc8/b;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public registerChangeListener(Lc8/b$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc8/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc8/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/b$c;

    .line 2
    invoke-interface {v1}, Lc8/b$c;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/b;->d:Z

    return-void
.end method

.method public unRegisterChangeListener(Lc8/b$c;)V
    .locals 1

    iget-object v0, p0, Lc8/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getGiftId()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getSendCount()I

    move-result v2

    invoke-direct {p0, v0, v3, v2}, Lc8/b;->v(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public x(Lcom/guochao/faceshow/promotion/data/PromotionData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc8/b;->a:Lcom/guochao/faceshow/promotion/data/PromotionData;

    .line 2
    invoke-direct {p0}, Lc8/b;->r()V

    return-void
.end method

.method public y(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/bean/UserBean;->isFirstRegist:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lc8/b;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc8/b;->p(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc8/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lc8/b;->b:Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->getLiveFrame()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lc8/b;->d:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lc8/b;->d:Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Lc8/b$a;

    invoke-direct {v2, p0, p1}, Lc8/b$a;-><init>(Lc8/b;Landroidx/fragment/app/Fragment;)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->urlToDrawable(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/r;)V

    :cond_2
    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
