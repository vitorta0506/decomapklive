.class public final Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001HB\t\u0008\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J&\u0010\n\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0007J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0003J2\u0010\u0013\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00102\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0004H\u0007J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007J\u0008\u0010\u0017\u001a\u00020\tH\u0007J\u0016\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018H\u0003J4\u0010 \u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007H\u0016J\u001c\u0010 \u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010!\u001a\u00020\tH\u0016R\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0014\u0010%\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0014\u0010&\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u0014\u0010\'\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008(\u0010#R\u0014\u0010)\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008)\u0010#R\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008*\u0010#R$\u0010,\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R0\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u000103028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R0\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010:028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u00105\u001a\u0004\u0008<\u00107\"\u0004\u0008=\u00109R\u0016\u0010>\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R$\u0010@\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006I"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;",
        "Lb8/d$a;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "checkPushHelper",
        "",
        "tokenType",
        "token",
        "",
        "forceRefresh",
        "",
        "setThirdPushToken",
        "Lcom/guochao/faceshow/bean/UserBean;",
        "currentUser",
        "uploadToken",
        "Landroid/content/Context;",
        "context",
        "",
        "map",
        "type",
        "onReceiveOnlineMessage",
        "Landroid/content/Intent;",
        "intent",
        "checkWhereToGo",
        "init",
        "",
        "",
        "getConfig",
        "oldUser",
        "newUser",
        "refreshServerConfig",
        "setAlias",
        "refreshThirdToken",
        "onUserChanged",
        "onLogout",
        "TYPE_NONE",
        "Ljava/lang/String;",
        "TYPE_FCM",
        "TYPE_XIAOMI_CHINA",
        "TYPE_XIAOMI_INTERNATIONAL",
        "TYPE_HUAWEI",
        "TYPE_OPPO",
        "TYPE_VIVO",
        "TAG",
        "Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;",
        "lastToken",
        "Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;",
        "getLastToken",
        "()Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;",
        "setLastToken",
        "(Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;)V",
        "Landroidx/collection/ArrayMap;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;",
        "clickHandlers",
        "Landroidx/collection/ArrayMap;",
        "getClickHandlers",
        "()Landroidx/collection/ArrayMap;",
        "setClickHandlers",
        "(Landroidx/collection/ArrayMap;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
        "displayers",
        "getDisplayers",
        "setDisplayers",
        "logined",
        "Z",
        "pushHelper",
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "getPushHelper",
        "()Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "setPushHelper",
        "(Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;)V",
        "<init>",
        "()V",
        "ThirdToken",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ThirdPushHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_FCM:Ljava/lang/String; = "1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_HUAWEI:Ljava/lang/String; = "20"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_NONE:Ljava/lang/String; = "0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_OPPO:Ljava/lang/String; = "30"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_VIVO:Ljava/lang/String; = "40"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_XIAOMI_CHINA:Ljava/lang/String; = "10"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_XIAOMI_INTERNATIONAL:Ljava/lang/String; = "11"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static clickHandlers:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static displayers:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static logined:Z

.field private static pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;

    .line 1
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->clickHandlers:Landroidx/collection/ArrayMap;

    .line 2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->displayers:Landroidx/collection/ArrayMap;

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 4
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->clickHandlers:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandlerKt;->registerHandler(Landroidx/collection/ArrayMap;)V

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->displayers:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayerKt;->registerDisplayer(Landroidx/collection/ArrayMap;)V

    .line 6
    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->checkPushHelper()Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkPushHelper()Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->c0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;

    invoke-direct {v0, v2, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;

    invoke-direct {v0, v2, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lo9/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushHelper;-><init>()V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static final checkWhereToGo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ext"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    const-string p1, "type_id"

    .line 2
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "type"

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    const-string v2, "clickFrom"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "system_notification"

    .line 6
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v3

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "click_type_id"

    .line 8
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "firm_type"

    .line 9
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "third_push_click_type"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "show_from"

    .line 10
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "third_push_online_message_clicked"

    .line 12
    invoke-virtual {v3, v2, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->clickHandlers:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;

    if-nez p1, :cond_5

    return v0

    .line 14
    :cond_5
    invoke-virtual {p1, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;->onNotificationClicked(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method private static final getConfig()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "messagePriority"

    const-string v3, "0"

    .line 3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fcmConfig"

    .line 4
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v4, "1"

    .line 6
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "region"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "miConfig"

    .line 8
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 10
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "huaweiConfig"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v3, v4

    :cond_0
    const-string v2, "notificationEnabled"

    .line 15
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "defaultConfig"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final init()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;->init$app_GooglePlayRelease()V

    :cond_0
    return-void
.end method

.method public static final onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getManager$app_GooglePlayRelease()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type_id"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "receive_type_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "third_push_type"

    .line 5
    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v4, "true"

    goto :goto_0

    :cond_0
    const-string v4, " false"

    :goto_0
    const-string v5, "notificationEnable"

    .line 6
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v4, "third_push_online_message_received"

    .line 8
    invoke-virtual {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "is_online_message"

    const-string v2, "1"

    .line 9
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "firm_type"

    .line 10
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 11
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->showInAppNotification(Ljava/util/Map;)V

    return-void

    .line 12
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->displayers:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;

    if-nez p2, :cond_2

    .line 14
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/CommonDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/CommonDisplayer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;->showNotification(Landroid/content/Context;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public static synthetic onReceiveOnlineMessage$default(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final setThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tokenType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThirdPushToken:  tokenType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " force is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ThirdPushHelper"

    .line 2
    invoke-static {v1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getPushType()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getToken()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const-string p2, "0"

    .line 4
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->f(Z)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->i(Z)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tokens/user/third/bind/tokens?systoken="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    const-string v1, ""

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 12
    :cond_3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    .line 13
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->c()Lb8/a;

    move-result-object p0

    const-string p1, "getInstance().currentUser"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->uploadToken(Lcom/guochao/faceshow/bean/UserBean;)V

    return-void
.end method

.method public static synthetic setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final uploadToken(Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getPushType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getPushType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3
    :goto_1
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->logined:Z

    if-nez v2, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tokens/user/third/bind/tokens?systoken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, "api/information/fcm/device/bind"

    .line 6
    :goto_3
    new-instance v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_6

    const-string v2, ""

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    const-string v4, "token"

    .line 7
    invoke-virtual {v3, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v2, "tokenType"

    .line 8
    invoke-virtual {v3, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->getConfig()Ljava/util/Map;

    move-result-object v2

    const-string v4, "configs"

    invoke-virtual {v3, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->logined:Z

    if-nez p0, :cond_8

    .line 11
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 12
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "unixTime"

    invoke-virtual {v3, v2, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tokenType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&token="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&deviceId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&unixTime="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "sign"

    invoke-virtual {v3, v2, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 16
    :cond_8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string p0, "1"

    .line 17
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    const/16 v0, 0x1b3e

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->h(ILjava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string p0, "11"

    .line 20
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiMsgReceiver;->d()I

    move-result v0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->h(ILjava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string p0, "10"

    .line 24
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    const/16 v0, 0x5590

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->h(ILjava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string p0, "20"

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    const/16 v0, 0x2e2b

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->h(ILjava/lang/String;)V

    .line 30
    :cond_d
    :goto_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->g()V

    return-void
.end method


# virtual methods
.method public final getClickHandlers()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->clickHandlers:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final getDisplayers()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->displayers:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final getLastToken()Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    return-object v0
.end method

.method public final getPushHelper()Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    return-object v0
.end method

.method public onLogout()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->logined:Z

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getPushType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "20"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    :cond_1
    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->logined:Z

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;->getPushType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p3, "0"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->uploadToken(Lcom/guochao/faceshow/bean/UserBean;)V

    goto :goto_1

    .line 4
    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;->checkToken()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setClickHandlers(Landroidx/collection/ArrayMap;)V
    .locals 1
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->clickHandlers:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public final setDisplayers(Landroidx/collection/ArrayMap;)V
    .locals 1
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->displayers:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public final setLastToken(Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->lastToken:Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;

    return-void
.end method

.method public final setPushHelper(Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->pushHelper:Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;

    return-void
.end method
