.class public Lcom/guochao/faceshow/utils/PushUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;,
        Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;
    }
.end annotation


# static fields
.field public static final CHAT_PUSH_TYPE:Ljava/lang/String; = "-1"

.field public static final J_PUSH_TIP:Ljava/lang/String; = "jPushTip"

.field public static final J_PUSH_TIP_SHOW:Ljava/lang/String; = "J_PUSH_TIP_SHOW"

.field public static final KEY_FROM_PUSH:Ljava/lang/String; = "TAG_KEY_FORM_PUSH"

.field private static final TAG:Ljava/lang/String; = "PushUtils"

.field private static final handler:Landroid/os/Handler;

.field private static final sHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public static sRunnable:Ljava/lang/Runnable; = null

.field public static final sSequence:I = 0x814d

.field private static time:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/PushUtils;->sHandlerMap:Ljava/util/HashMap;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/guochao/faceshow/utils/PushUtils;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/utils/PushUtils$9;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/PushUtils$9;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/PushUtils;->sRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->lambda$receiveCustomMessage$0(Landroid/app/Dialog;Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->showSuperLikeNotification(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->lambda$navLiveActivity$2(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/utils/PushUtils;->lambda$receiveCustomMessage$1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/utils/PushUtils;->lambda$liveOrF2fBanned$4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->lambda$liveOrF2fBanned$3(Landroid/app/Dialog;Z)V

    return-void
.end method

.method private static frozenAccountAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.example.broadcasttest.liveend"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TAG_KEY_FORM_PUSH"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "J_PUSH_TIP_SHOW"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 6
    sget-object v0, Lcom/guochao/faceshow/utils/PushUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/utils/PushUtils$8;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/utils/PushUtils$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getDataFromMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 6
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_4

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_4

    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static handleOpenClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "JMessageExtra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    .line 7
    const-class v1, Lcom/guochao/faceshow/bean/JMessageExtra;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/JMessageExtra;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/JMessageExtra;->getMsg_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/JMessageExtra;->getRom_type()B

    move-result p1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/api/JPushInterface;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;B)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "JPush_notification_click"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static isWithDataSplash()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->pushData:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->shareData:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withChat:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withEmptyChat:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static jumpDefault(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static jumpLiveActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f120516

    const v1, 0x7f1206a8

    const v2, 0x7f120910

    .line 1
    invoke-static {v0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p1, p0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->getLiveInfoAndJumpIfNeed(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToChat(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "action"

    const-string/jumbo v1, "type_id"

    :try_start_0
    const-string v2, "PushUtils"

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpToChat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "type"

    if-nez v2, :cond_3

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/PushBean;-><init>()V

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withChat:Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    const-string v1, "fromUserId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromNickName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/PushUtils;->openByIMOfflinePush(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$liveOrF2fBanned$3(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$liveOrF2fBanned$4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/e;

    sget-object v1, Lcom/guochao/faceshow/utils/c;->a:Lcom/guochao/faceshow/utils/c;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p1, p2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$navLiveActivity$2(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$receiveCustomMessage$0(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$receiveCustomMessage$1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/e;

    sget-object v1, Lcom/guochao/faceshow/utils/b;->a:Lcom/guochao/faceshow/utils/b;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p1, p2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_1
    return-void
.end method

.method private static liveOrF2fBanned(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hour"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "tip"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reasonMsgLang"

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "reasonMsg"

    .line 4
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "startLiveTime"

    .line 5
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "reasonCode"

    .line 6
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->closeFaceToFacePerformClick(Landroid/app/Activity;)V

    .line 9
    instance-of v7, v6, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    const-string v8, ""

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 10
    new-instance v6, Ly7/b;

    invoke-direct {v6}, Ly7/b;-><init>()V

    .line 11
    iput-object p0, v6, Ly7/b;->g:Ljava/util/Map;

    .line 12
    instance-of p0, v5, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object p0, v5

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v8

    :goto_0
    iput-object p0, v6, Ly7/b;->a:Ljava/lang/String;

    .line 13
    instance-of p0, v0, Ljava/lang/String;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    iput-object p0, v6, Ly7/b;->b:Ljava/lang/String;

    .line 15
    :cond_1
    :try_start_0
    instance-of p0, v4, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 16
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Ly7/b;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    move-object p0, v8

    goto :goto_2

    :cond_3
    move-object p0, v1

    .line 17
    :goto_2
    iput-object p0, v6, Ly7/b;->c:Ljava/lang/String;

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v4, Lcom/guochao/faceshow/utils/e;

    invoke-direct {v4, v6, v2, v1}, Lcom/guochao/faceshow/utils/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_5
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p0

    const-class v4, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    if-eqz p0, :cond_7

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish(Z)V

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p0

    const-class v4, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/activity/MainActivity;

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v1

    goto :goto_4

    :cond_6
    move-object v4, v2

    :goto_4
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/activity/MainActivity;->t1(Ljava/lang/String;)V

    .line 25
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p0

    const/4 v4, 0x1

    .line 26
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUserLiveBanned(I)V

    .line 27
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;-><init>()V

    .line 28
    :try_start_1
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 29
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setHour(I)V

    .line 30
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getLiveBannedEndTime(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setRestartLiveTimeStamp(J)V

    .line 31
    :cond_8
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v3, v1

    :cond_a
    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonMsg(Ljava/lang/String;)V

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonMsgLang(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setLiveOperationVo(Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;)V

    return-void
.end method

.method public static moveToFront()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_0
    return-void
.end method

.method private static navLiveActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f120516

    const v1, 0x7f1206a8

    const v2, 0x7f120910

    .line 1
    invoke-static {v0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStartTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/utils/f;

    invoke-direct {p2, v0, p0}, Lcom/guochao/faceshow/utils/f;-><init>(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static openByIMOfflinePush(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "58"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "live_id"

    const-string v1, "liveId"

    .line 3
    invoke-static {p0, p1, v1}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "live_type"

    const-string v2, "liveType"

    .line 4
    invoke-static {p0, p1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "live_img"

    const-string v3, "liveImg"

    .line 5
    invoke-static {p0, p1, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo p1, "user_img"

    const-string/jumbo v4, "userImg"

    .line 6
    invoke-static {p0, p1, v4}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo p1, "start_time"

    const-string v5, "liveStartTime"

    .line 7
    invoke-static {p0, p1, v5}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "group_id"

    const-string v6, "groupId"

    .line 8
    invoke-static {p0, p1, v6}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "private_live_invite_click_by_tim"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/utils/PushUtils;->navLiveActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static openNotification(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v2, "KEY_HELLO_HOUR_SHOW_V2"

    const-string v3, "liveId"

    :try_start_0
    const-string/jumbo v4, "type_id"

    const-string/jumbo v5, "type"

    .line 1
    invoke-static {p1, v4, v5}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x3

    const-string v8, "58"

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v6, "321"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "240"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "230"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "220"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "210"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "200"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "109"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_7
    const-string v6, "100"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_8
    const-string v6, "97"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_9
    const-string v6, "95"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_a
    const-string v6, "61"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_b
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_c
    const-string v6, "51"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_d
    const-string v6, "22"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_e
    const-string v6, "12"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_f
    const-string v6, "4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    :cond_0
    :goto_0
    const-string/jumbo v6, "user_id"

    const-string/jumbo v10, "url"

    const-string/jumbo v11, "userId"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    :try_start_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4
    instance-of v3, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_6

    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v2

    const-string v3, "hellostar_hellogiftsecend"

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getFirstNum()I

    move-result v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v2

    invoke-static {v9, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;

    move-result-object v2

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "HelloStarGiftDialog"

    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 9
    :pswitch_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->b(Lorg/json/JSONObject;)Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    move-result-object v1

    .line 10
    iput v7, v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    const-string v2, "1"

    .line 11
    iput-object v2, v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    .line 12
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 13
    :pswitch_3
    invoke-static {p1, v6}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v2

    invoke-static {p1, v10}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->l(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_5
    const-string/jumbo v2, "video_id"

    .line 15
    invoke-static {p1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1, v9}, Lcom/guochao/faceshow/utils/PushUtils;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 16
    :pswitch_6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 17
    :goto_1
    invoke-static {p1, v11}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v9, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    const-string v2, "account"

    .line 18
    invoke-static {p1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    return-void

    .line 21
    :cond_2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    const-string v0, "accountNickName"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const-string v2, "accountId"

    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 28
    :pswitch_9
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/PushUtils;->getDataFromMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    .line 29
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void

    .line 33
    :cond_4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto/16 :goto_3

    .line 34
    :pswitch_a
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/PushUtils;->getDataFromMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    if-eqz v0, :cond_7

    .line 35
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->h(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    goto/16 :goto_3

    .line 36
    :pswitch_b
    invoke-static {p1, v10}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_3

    .line 38
    :pswitch_c
    invoke-static {p1, v11}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "videoId"

    .line 39
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 41
    invoke-static {p0, v1, v2, p2}, Lcom/guochao/faceshow/utils/PushUtils;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_d
    const-string v2, "live_id"

    .line 42
    invoke-static {p1, v2, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "live_type"

    .line 43
    invoke-static {p1, v5, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "live_img"

    const-string v6, "liveImg"

    .line 44
    invoke-static {p1, v5, v6}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user_img"

    const-string/jumbo v7, "userImg"

    .line 45
    invoke-static {p1, v6, v7}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "start_time"

    const-string v9, "liveStartTime"

    .line 46
    invoke-static {p1, v7, v9}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "group_id"

    const-string v10, "groupId"

    .line 47
    invoke-static {p1, v9, v10}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v4, "private_live_invite_click_by_jiguang"

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_5
    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 50
    invoke-static/range {v1 .. v7}, Lcom/guochao/faceshow/utils/PushUtils;->navLiveActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 51
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "tag"

    const-string v1, "Unexpected: extras is not a valid json"

    .line 53
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_f
        0x621 -> :sswitch_e
        0x640 -> :sswitch_d
        0x69c -> :sswitch_c
        0x6a3 -> :sswitch_b
        0x6bb -> :sswitch_a
        0x71c -> :sswitch_9
        0x71e -> :sswitch_8
        0xbdf1 -> :sswitch_7
        0xbdfa -> :sswitch_6
        0xc1b2 -> :sswitch_5
        0xc1d1 -> :sswitch_4
        0xc1f0 -> :sswitch_3
        0xc20f -> :sswitch_2
        0xc22e -> :sswitch_1
        0xc5b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static openShareActivity(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "videoId"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "userId"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p0, v0, p1, p2}, Lcom/guochao/faceshow/utils/PushUtils;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_0
    const-string p2, "3"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "live_id"

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 9
    :goto_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->jumpLiveActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "4"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "name"

    const-string v3, "id"

    if-eqz p2, :cond_3

    .line 11
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "topic_id"

    .line 15
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "titleName"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "5"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v4, "url"

    if-eqz p2, :cond_4

    .line 19
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "userToken"

    .line 21
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "8"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 25
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;-><init>()V

    .line 27
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->setTopicName(Ljava/lang/String;)V

    .line 29
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    goto :goto_1

    :cond_5
    const-string p2, "100"

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 31
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 32
    new-instance p2, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string p2, "10"

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "groupId"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v0, "/guild/myLiveActivity"

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->withParams(Landroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    goto :goto_1

    .line 37
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/PushUtils;->jumpLiveActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const p2, 0x7f120517

    const p3, 0x7f1206a9

    const v0, 0x7f120911

    .line 1
    invoke-static {p2, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ln7/c;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/guochao/faceshow/activity/VideoPlayActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static pushByIM(Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushIm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getMessageContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushHelper: "

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTimestamp()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->m0()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getMessageMap()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getTypeId()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "321"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "300"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "240"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "230"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "220"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "210"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "200"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "98"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "92"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "91"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "58"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v2, "31"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 7
    :pswitch_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p0

    .line 8
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_e

    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_HELLO_HOUR_SHOW_V2"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "hellostar_hellogiftsecend"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getFirstNum()I

    move-result v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v0

    invoke-static {v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;

    move-result-object v0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "HelloStarGiftDialog"

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :pswitch_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p0

    const-class v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const v0, 0x7f12085c

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_1

    .line 14
    :pswitch_2
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 15
    :pswitch_3
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/CommonDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/CommonDisplayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 16
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u88ab\u9080\u8bf7\u7684\u6b21\u6570 = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/guochao/faceshow/utils/PushUtils;->time:I

    add-int/2addr v1, v3

    sput v1, Lcom/guochao/faceshow/utils/PushUtils;->time:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "zune:"

    invoke-static {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomDisplayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 18
    :pswitch_5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/PushUtils;->liveOrF2fBanned(Ljava/util/Map;)V

    goto :goto_1

    .line 19
    :pswitch_6
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/LiveRoomDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/LiveRoomDisplayer;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    :cond_e
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x621 -> :sswitch_c
        0x65e -> :sswitch_b
        0x6a3 -> :sswitch_a
        0x718 -> :sswitch_9
        0x719 -> :sswitch_8
        0x71f -> :sswitch_7
        0xc1b2 -> :sswitch_6
        0xc1d1 -> :sswitch_5
        0xc1f0 -> :sswitch_4
        0xc20f -> :sswitch_3
        0xc22e -> :sswitch_2
        0xc573 -> :sswitch_1
        0xc5b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static receiveCustomMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "matchPrice"

    const-string v4, "account"

    .line 1
    const-class v5, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    const-string/jumbo v6, "userId"

    :try_start_0
    const-string/jumbo v7, "type_id"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const-string v9, ""

    if-eqz v8, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v9

    .line 4
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v12, 0x620

    const-string v15, "96"

    const-string v10, "70"

    const-string v14, "69"

    if-eq v11, v12, :cond_d

    const/16 v12, 0x628

    if-eq v11, v12, :cond_c

    const/16 v12, 0x63f

    if-eq v11, v12, :cond_b

    const/16 v12, 0x65d

    if-eq v11, v12, :cond_a

    const/16 v12, 0x6d9

    if-eq v11, v12, :cond_9

    const/16 v12, 0x6db

    if-eq v11, v12, :cond_8

    const/16 v12, 0x701

    if-eq v11, v12, :cond_7

    const/16 v12, 0x717

    if-eq v11, v12, :cond_6

    const v12, 0xbdf5

    if-eq v11, v12, :cond_5

    const/16 v12, 0x6fe

    if-eq v11, v12, :cond_4

    const/16 v12, 0x6ff

    if-eq v11, v12, :cond_3

    const/16 v12, 0x71a

    if-eq v11, v12, :cond_2

    const/16 v12, 0x71b

    if-eq v11, v12, :cond_1

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    packed-switch v11, :pswitch_data_3

    packed-switch v11, :pswitch_data_4

    packed-switch v11, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_0
    :try_start_2
    const-string v11, "102"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x21

    goto/16 :goto_2

    :pswitch_1
    const-string v11, "101"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x1f

    goto/16 :goto_2

    :pswitch_2
    const-string v11, "100"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x2a

    goto/16 :goto_2

    :pswitch_3
    const-string v11, "99"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x29

    goto/16 :goto_2

    :pswitch_4
    const-string v11, "98"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x28

    goto/16 :goto_2

    :pswitch_5
    const-string v11, "97"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x27

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x23

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x1a

    goto/16 :goto_2

    :pswitch_8
    const-string v11, "68"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x19

    goto/16 :goto_2

    :pswitch_9
    const-string v11, "67"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x18

    goto/16 :goto_2

    :pswitch_a
    const-string v11, "66"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x17

    goto/16 :goto_2

    :pswitch_b
    const-string v11, "65"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x16

    goto/16 :goto_2

    :pswitch_c
    const-string v11, "64"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x15

    goto/16 :goto_2

    :pswitch_d
    const-string v11, "62"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x14

    goto/16 :goto_2

    :pswitch_e
    const-string v11, "61"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x13

    goto/16 :goto_2

    :pswitch_f
    const-string v11, "60"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x12

    goto/16 :goto_2

    :pswitch_10
    const-string v11, "59"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x11

    goto/16 :goto_2

    :pswitch_11
    const-string v11, "58"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xf

    goto/16 :goto_2

    :pswitch_12
    const-string v11, "57"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x10

    goto/16 :goto_2

    :pswitch_13
    const-string v11, "56"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xe

    goto/16 :goto_2

    :pswitch_14
    const-string v11, "55"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xd

    goto/16 :goto_2

    :pswitch_15
    const-string v11, "54"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xc

    goto/16 :goto_2

    :pswitch_16
    const-string v11, "53"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xb

    goto/16 :goto_2

    :pswitch_17
    const-string v11, "52"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0xa

    goto/16 :goto_2

    :pswitch_18
    const-string v11, "45"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x9

    goto/16 :goto_2

    :pswitch_19
    const-string v11, "44"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x8

    goto/16 :goto_2

    :pswitch_1a
    const-string v11, "43"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x7

    goto/16 :goto_2

    :pswitch_1b
    const-string v11, "42"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x6

    goto/16 :goto_2

    :pswitch_1c
    const-string v11, "41"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x5

    goto/16 :goto_2

    :pswitch_1d
    const-string v11, "40"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_1
    const-string v11, "94"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x26

    goto/16 :goto_2

    :cond_2
    const-string v11, "93"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x25

    goto/16 :goto_2

    :cond_3
    const-string v11, "87"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x20

    goto/16 :goto_2

    :cond_4
    const-string v11, "86"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x1e

    goto :goto_2

    :cond_5
    const-string v11, "104"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x2b

    goto :goto_2

    :cond_6
    const-string v11, "90"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x24

    goto :goto_2

    :cond_7
    const-string v11, "89"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x22

    goto :goto_2

    :cond_8
    const-string v11, "72"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x1d

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x1b

    goto :goto_2

    :cond_a
    const-string v11, "30"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x2

    goto :goto_2

    :cond_b
    const-string v11, "21"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_2

    :cond_c
    const-string v11, "19"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    goto :goto_2

    :cond_d
    const-string v11, "11"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v11, :cond_e

    const/4 v11, 0x4

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v11, -0x1

    :goto_2
    const-string v12, "FOLLOW_ADD"

    const-string/jumbo v13, "tip"

    move-object/from16 v16, v9

    const-string v9, "hour"

    move-object/from16 v17, v12

    const-string v12, "live_id"

    move-object/from16 v18, v4

    const-string v4, "select_time"

    move-object/from16 v19, v6

    const-string v6, "PushUtils"

    packed-switch v11, :pswitch_data_6

    packed-switch v11, :pswitch_data_7

    .line 5
    :try_start_3
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(\u4ec5\u6d4b\u8bd5)\u6536\u5230\u63a8\u9001\u2014\u2014\u4f60\u88ab\u4e3b\u64ad\u8e22\u8d70\u4e86liveId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    :cond_f
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(\u4ec5\u6d4b\u8bd5)\u6536\u5230\u63a8\u9001\u2014\u2014\u4f60\u88ab\u4e3b\u64ad\u89e3\u9664\u8e22\u51fa\u4e86liveId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_12

    .line 9
    :pswitch_1e
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/utils/PushUtils$6;

    invoke-direct {v4, v1, v0}, Lcom/guochao/faceshow/utils/PushUtils$6;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12

    .line 10
    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getPushData(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->enable()Z

    move-result v4

    if-nez v4, :cond_10

    return-void

    .line 12
    :cond_10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->saveLocal()V

    const-string/jumbo v3, "\u672c\u5730\u7f13\u5b58\u7684\u914d\u7f6e\u4e0e\u63a8\u9001\u7684\u914d\u7f6e\u4e0d\u4e00\u81f4\uff0c\u91cd\u542f\u5c06\u7528\u6700\u65b0\u7684"

    .line 13
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_12

    .line 14
    :pswitch_20
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->getResult()Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 16
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 17
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    .line 20
    :cond_11
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    if-eqz v0, :cond_12

    .line 21
    :try_start_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->startCallTimestamp:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 22
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_12
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->u()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void

    .line 25
    :cond_13
    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->g(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto/16 :goto_12

    .line 26
    :pswitch_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openNotification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_12

    .line 27
    :pswitch_22
    :try_start_6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    .line 28
    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_12

    :cond_14
    const-string v4, "applyState"

    .line 29
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_16

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/4 v8, 0x4

    if-eq v4, v8, :cond_15

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    .line 31
    :cond_15
    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/bean/UserBean;->setAppointState(I)V

    goto :goto_4

    :cond_16
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/bean/UserBean;->setAppointState(I)V

    goto :goto_4

    .line 33
    :goto_5
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/bean/UserBean;->setIsInvited(I)V

    const-string v4, "appointState"

    .line 34
    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    :try_start_7
    const-string v3, "receiveCustomMessage: "

    .line 35
    invoke-static {v6, v3, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :pswitch_23
    const-string/jumbo v0, "user_id"

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "live_img"

    .line 37
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_17

    move-object/from16 v9, v16

    goto :goto_6

    :cond_17
    move-object v9, v3

    :goto_6
    if-eqz v0, :cond_37

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "live_cover"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_18
    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    instance-of v3, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v3, :cond_37

    .line 46
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_7

    .line 48
    :cond_19
    new-instance v3, Lcom/guochao/faceshow/utils/PushUtils$5;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/utils/PushUtils$5;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_12

    :cond_1a
    :goto_7
    return-void

    .line 49
    :pswitch_24
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    .line 50
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/utils/PushUtils$4;

    invoke-direct {v4, v0}, Lcom/guochao/faceshow/utils/PushUtils$4;-><init>(Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12

    .line 51
    :pswitch_25
    invoke-static/range {p1 .. p1}, Lcom/guochao/faceshow/utils/PushUtils;->updateVipMsg(Ljava/util/Map;)V

    goto/16 :goto_12

    .line 52
    :pswitch_26
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/utils/PushUtils$3;

    invoke-direct {v3, v2}, Lcom/guochao/faceshow/utils/PushUtils$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12

    .line 53
    :pswitch_27
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;

    const-string v4, "WELCOME_PAGE_v2"

    .line 54
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UpdateActivityBean;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_12

    :pswitch_28
    :try_start_8
    const-string v0, "pk_list"

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_1b
    move-object/from16 v9, v16

    .line 57
    :goto_8
    invoke-static {v6, v9}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;-><init>()V

    .line 60
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 61
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "null"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 62
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0, v9, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 63
    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPk(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 64
    :cond_1c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_12

    :catch_2
    move-exception v0

    :try_start_9
    const-string v3, "receiveCustomMessage: 62"

    .line 65
    invoke-static {v6, v3, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 66
    :pswitch_29
    const-class v3, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-static {v1, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getDataFromMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    .line 67
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    return-void

    .line 68
    :cond_1d
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 69
    invoke-static {v0, v3}, Lcom/guochao/faceshow/utils/PushUtils;->showPkInviteNotification(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    .line 70
    :cond_1e
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->g(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    goto/16 :goto_12

    :pswitch_2a
    const-string v0, "match_list"

    .line 71
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Ly7/m;

    invoke-direct {v5}, Ly7/m;-><init>()V

    .line 75
    invoke-virtual {v5, v0}, Ly7/m;->e(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v4}, Ly7/m;->d(Ljava/lang/String;)V

    .line 77
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ly7/m;->f(J)V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "receiveCustomMessage: 60 \u6df7\u6d41\u6210\u529f\u4e86"

    .line 79
    invoke-static {v6, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 80
    :pswitch_2b
    new-instance v3, Ly7/b;

    invoke-direct {v3}, Ly7/b;-><init>()V

    .line 81
    iput-object v1, v3, Ly7/b;->g:Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :try_start_a
    const-string/jumbo v0, "startTime"

    .line 82
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Ly7/b;->d:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 84
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_9
    const-string v0, "liveId"

    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ly7/b;->e:Ljava/lang/String;

    .line 87
    :cond_20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 88
    :pswitch_2c
    new-instance v0, Ly7/b;

    invoke-direct {v0}, Ly7/b;-><init>()V

    .line 89
    iput-object v1, v0, Ly7/b;->g:Ljava/util/Map;

    const/4 v3, 0x1

    .line 90
    iput-boolean v3, v0, Ly7/b;->f:Z

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/utils/PushUtils$2;

    invoke-direct {v3}, Lcom/guochao/faceshow/utils/PushUtils$2;-><init>()V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 93
    :pswitch_2d
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->y()V

    goto/16 :goto_12

    .line 94
    :pswitch_2e
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setIsFriendNew(I)V

    .line 95
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->p()V

    goto/16 :goto_12

    .line 96
    :pswitch_2f
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUserLiveBanned(I)V

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setLiveOperationVo(Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;)V

    goto/16 :goto_12

    .line 99
    :pswitch_30
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUserSpeech(I)V

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setLiveSpeechOperationLogVo(Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;)V

    goto/16 :goto_12

    :pswitch_31
    const-string/jumbo v0, "speechTimeStamp"

    .line 102
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "operationMode"

    .line 104
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "reasonContent"

    .line 105
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "reasonContentLang"

    .line 106
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v9

    const/4 v10, 0x1

    .line 109
    invoke-virtual {v9, v10}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUserSpeech(I)V

    .line 110
    new-instance v10, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    invoke-direct {v10}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 111
    :try_start_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 112
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->setSpeechTimeStamp(J)V

    .line 113
    :cond_21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->setHours(I)V

    .line 115
    :cond_22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->setOperationMode(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 117
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_23
    :goto_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v5, v8

    :cond_24
    invoke-virtual {v10, v5}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->setReasonContent(Ljava/lang/String;)V

    .line 119
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v6, v8

    :cond_25
    invoke-virtual {v10, v6}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->setReasonContentLang(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v9, v10}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setLiveSpeechOperationLogVo(Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;)V

    .line 121
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->p()V

    goto/16 :goto_12

    .line 122
    :pswitch_32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToNoDisturb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 123
    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->p()V

    goto/16 :goto_12

    .line 125
    :pswitch_33
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToNoDisturb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 126
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->p()V

    goto/16 :goto_12

    :pswitch_34
    move-object/from16 v0, v19

    .line 128
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 129
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    :cond_28
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "BLACK_NAME_CANCLE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_35
    move-object/from16 v0, v19

    .line 131
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 133
    :cond_29
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "BLACK_NAME_ADD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v3, "profile_black_succ"

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_36
    move-object/from16 v0, v19

    .line 135
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 136
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    :cond_2a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "FOLLOW_CANCLE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_37
    move-object/from16 v0, v19

    move-object/from16 v3, v18

    .line 138
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 139
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_2b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v5, v17

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_38
    move-object/from16 v5, v17

    move-object/from16 v0, v19

    .line 141
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 142
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    :cond_2c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 144
    :pswitch_39
    invoke-static {}, Lcom/guochao/lib_core/feature/Feature;->fetch()V

    .line 145
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/utils/PushUtils$1;

    invoke-direct {v3, v1}, Lcom/guochao/faceshow/utils/PushUtils$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12

    .line 146
    :pswitch_3a
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "reasonMsgLang"

    .line 148
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "reasonMsg"

    .line 149
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "startLiveTime"

    .line 150
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "reasonCode"

    .line 151
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 152
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v9

    .line 153
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->closeFaceToFacePerformClick(Landroid/app/Activity;)V

    .line 154
    instance-of v10, v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-eqz v10, :cond_31

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 155
    new-instance v9, Ly7/b;

    invoke-direct {v9}, Ly7/b;-><init>()V

    .line 156
    iput-object v1, v9, Ly7/b;->g:Ljava/util/Map;

    .line 157
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_2d

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    goto :goto_b

    :cond_2d
    move-object/from16 v10, v16

    :goto_b
    iput-object v10, v9, Ly7/b;->a:Ljava/lang/String;

    .line 158
    instance-of v10, v0, Ljava/lang/String;

    if-eqz v10, :cond_2e

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 159
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Ly7/b;->b:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 160
    :cond_2e
    :try_start_e
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_2f

    .line 161
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Ly7/b;->d:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_c

    :catch_5
    nop

    :cond_2f
    :goto_c
    if-nez v3, :cond_30

    move-object/from16 v6, v16

    goto :goto_d

    :cond_30
    move-object v6, v3

    .line 162
    :goto_d
    :try_start_f
    iput-object v6, v9, Ly7/b;->c:Ljava/lang/String;

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_e

    :cond_31
    if-eqz v9, :cond_32

    .line 164
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v10, Lcom/guochao/faceshow/utils/d;

    invoke-direct {v10, v9, v4, v3}, Lcom/guochao/faceshow/utils/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    :goto_e
    const-string v6, "31"

    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 166
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    const/4 v9, 0x1

    .line 167
    invoke-virtual {v6, v9}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUserLiveBanned(I)V

    .line 168
    new-instance v9, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    invoke-direct {v9}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 169
    :try_start_10
    instance-of v10, v0, Ljava/lang/String;

    if-eqz v10, :cond_33

    .line 170
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setHour(I)V

    .line 171
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getLiveBannedEndTime(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setRestartLiveTimeStamp(J)V

    .line 172
    :cond_33
    instance-of v0, v8, Ljava/lang/String;

    if-eqz v0, :cond_34

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    goto :goto_f

    :cond_34
    move-object/from16 v0, v16

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonId(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    .line 173
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    move-object v5, v3

    :cond_35
    invoke-virtual {v9, v5}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonMsg(Ljava/lang/String;)V

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_11

    :cond_36
    move-object v3, v4

    :goto_11
    invoke-virtual {v9, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->setReasonMsgLang(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6, v9}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setLiveOperationVo(Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;)V

    .line 177
    :cond_37
    :goto_12
    :pswitch_3b
    sget-object v0, Lcom/guochao/faceshow/utils/PushUtils;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_38

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;

    const/4 v4, 0x0

    .line 179
    invoke-interface {v3, v4, v7, v1, v2}, Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;->onPushCustomMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x67c
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x69d
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6ba
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6be
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x71d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xbdf1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_3b
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1d
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_3b
        :pswitch_1f
        :pswitch_1e
        :pswitch_3b
    .end packed-switch
.end method

.method public static receiveNotification(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "PushUtils"

    const-string p1, "receiveNotification: "

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs registerCustomMessageHandler(Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lcom/guochao/faceshow/utils/PushUtils;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static removeAliasRunnable()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/utils/PushUtils;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static savePushTag(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/utils/PushUtils;->openNotification(Landroid/content/Context;Ljava/util/Map;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PushBean;-><init>()V

    .line 6
    :cond_1
    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->pushData:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PushUtils;->jumpDefault(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static saveShareTag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120824

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.guochao.faceshow"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s://%s?"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v4, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    .line 6
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v0, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    aget-object v6, p1, v5

    const-string v7, "="

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 11
    aget-object v7, v6, v2

    array-length v8, v6

    if-ne v8, v3, :cond_0

    aget-object v6, v6, v2

    goto :goto_1

    :cond_0
    aget-object v6, v6, v3

    :goto_1
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {p0, v4, v3}, Lcom/guochao/faceshow/utils/PushUtils;->openShareActivity(Landroid/content/Context;Ljava/util/Map;Z)V

    return v3

    .line 14
    :cond_2
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/PushBean;-><init>()V

    .line 15
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->shareData:Ljava/util/Map;

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    return v2
.end method

.method public static setJPushAlias(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x814d

    invoke-static {v0, v1, p0}, Lcn/jpush/android/api/JPushInterface;->setAlias(Landroid/content/Context;ILjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/PushUtils;->removeAliasRunnable()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/guochao/faceshow/utils/PushUtils;->sRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showPkInviteNotification(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 7

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "13"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080359

    .line 3
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f120705

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getNick_name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v3

    const/16 v4, 0x3e8

    .line 11
    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object p0

    const p1, 0x9942

    add-int/2addr v6, p1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p0, v6, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private static showSuperLikeNotification(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->b()Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->a(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;

    move-result-object v1

    .line 4
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "12"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080359

    .line 5
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->superLike:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120b16

    goto :goto_0

    :cond_1
    const v3, 0x7f120b14

    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0136

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->superLike:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->likeWord:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f120b17

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->likeWord:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const v3, 0x7f120b15

    .line 10
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "userNick"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11
    :goto_1
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, -0x1

    .line 12
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "account"

    .line 15
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v4, "userId"

    .line 16
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v4

    const/16 v5, 0x3e8

    .line 18
    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 19
    iget-object p0, v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->userId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 20
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/PushUtils$7;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/utils/PushUtils$7;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs unregisterCustomMessageHandler(Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/utils/PushUtils$OnPushCustomMessageHandler<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lcom/guochao/faceshow/utils/PushUtils;->sHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateVipMsg(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "type_id"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subState"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vipGrade"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "vipSign"

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "thirdEndTime"

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "platform"

    .line 7
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "publicFontColor"

    .line 8
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "dressHead"

    .line 9
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "dressCarId"

    .line 10
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "dressCarSource"

    .line 11
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "dressCarSourceV2"

    .line 12
    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "arDressCarSource"

    .line 13
    invoke-interface {p0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "arDressCarSourceV2"

    .line 14
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "restCount"

    .line 15
    invoke-interface {p0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "restBrowseCount"

    .line 16
    invoke-interface {p0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 17
    instance-of v13, p0, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lh8/a;->a(Ljava/lang/Integer;)V

    .line 19
    :cond_1
    instance-of p0, v12, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 20
    :try_start_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->c()Lb8/a;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean;

    .line 21
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/guochao/faceshow/bean/UserBean;->setRestCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-eqz v1, :cond_15

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 23
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->c()Lb8/a;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    if-nez p0, :cond_3

    .line 24
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    :cond_3
    if-eqz v5, :cond_4

    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setPublicFontColor(Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    .line 27
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 28
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHeadType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v7, :cond_6

    .line 29
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarId(Ljava/lang/String;)V

    :cond_6
    if-eqz v8, :cond_7

    .line 30
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSource(Ljava/lang/String;)V

    :cond_7
    if-eqz v9, :cond_8

    .line 31
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSourceV2(Ljava/lang/String;)V

    :cond_8
    if-eqz v10, :cond_9

    .line 32
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSource(Ljava/lang/String;)V

    :cond_9
    if-eqz v11, :cond_a

    .line 33
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSourceV2(Ljava/lang/String;)V

    .line 34
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "0"

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v7, "2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/4 v6, 0x2

    goto :goto_2

    :pswitch_1
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/4 v6, 0x1

    goto :goto_2

    :pswitch_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    :goto_2
    const-string v5, "87"

    packed-switch v6, :pswitch_data_1

    goto :goto_5

    .line 36
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    if-nez v2, :cond_e

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "v"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setVipSign(Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :pswitch_4
    invoke-virtual {p0, v9}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    if-nez v2, :cond_f

    .line 39
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w:Ljava/lang/String;

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setVipSign(Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :pswitch_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 41
    invoke-virtual {p0, v10}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    :cond_10
    :goto_5
    if-eqz v4, :cond_11

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 43
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setPlatform(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_11
    :goto_6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2, p0}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    if-eqz v3, :cond_12

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setThirdEndTime(J)V

    .line 48
    :cond_12
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "101"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/VipCombo;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/VipCombo;-><init>()V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Ly7/r;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p0

    invoke-direct {v1, p0}, Ly7/r;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
