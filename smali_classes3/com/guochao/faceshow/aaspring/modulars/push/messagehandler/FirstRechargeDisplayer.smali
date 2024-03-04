.class public final Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;
.super Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0010\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
        "()V",
        "onShowNotification",
        "",
        "context",
        "Landroid/content/Context;",
        "map",
        "",
        "",
        "",
        "largeIcon",
        "Landroid/graphics/Bitmap;",
        "largeImage",
        "onShowNotification$app_GooglePlayRelease",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;-><init>()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->onShowNotification$lambda-0()V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->onShowNotification$lambda-3(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->onShowNotification$lambda-1(Ljava/util/List;)V

    return-void
.end method

.method private static final onShowNotification$lambda-0()V
    .locals 0

    invoke-static {}, Lb8/e;->h()V

    return-void
.end method

.method private static final onShowNotification$lambda-1(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_5

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->setDatas(Ljava/util/List;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->setType(I)V

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v3

    const v4, 0x7f1209dd

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->setName(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v3

    const v4, 0x7f120423

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->setName(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v3

    const v4, 0x7f120a2b

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "activity.supportFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static final onShowNotification$lambda-3(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_4

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;->values:Ljava/util/List;

    const-string v3, "itemBeans.values"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 8
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->setDatas(Ljava/util/List;)V

    .line 12
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "activity.supportFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onShowNotification$app_GooglePlayRelease(Landroid/content/Context;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string p3, "content"

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "user_id"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "userId"

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 5
    :goto_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p4

    invoke-interface {p4}, Lb8/d;->c()Lb8/a;

    move-result-object p4

    check-cast p4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p4, "First_charge_success"

    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object p4, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/c;->a:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/c;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :try_start_0
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_4
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 14
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer$onShowNotification$itemBeans$1;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer$onShowNotification$itemBeans$1;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/b;

    invoke-direct {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;

    if-eqz p1, :cond_8

    .line 19
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;->values:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/a;

    invoke-direct {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/a;-><init>(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    :catch_2
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
