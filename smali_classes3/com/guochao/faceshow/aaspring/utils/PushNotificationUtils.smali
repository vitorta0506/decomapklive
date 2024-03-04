.class public final Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\u0008\u0010\u0011\u001a\u00020\tH\u0002J$\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0003J\"\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\tH\u0007J\u001c\u0010\u001d\u001a\u00020\u000c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\u001fH\u0007J2\u0010 \u001a\u00020\u000c2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\u001f2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010#Jv\u0010%\u001a\u00020\u000c2\u0008\u0008\u0002\u0010&\u001a\u00020\u000e2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0008\u0002\u0010*\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006,"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;",
        "",
        "()V",
        "manager",
        "Landroidx/core/app/NotificationManagerCompat;",
        "getManager$app_GooglePlayRelease$annotations",
        "getManager$app_GooglePlayRelease",
        "()Landroidx/core/app/NotificationManagerCompat;",
        "considerPriority",
        "",
        "priority",
        "createVoiceRoomInviteNotification",
        "",
        "roomId",
        "",
        "groupChatId",
        "nickName",
        "getRandomRequestCode",
        "notify",
        "notificationId",
        "notificationTag",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "showInviteNotification",
        "context",
        "Landroid/content/Context;",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "from",
        "showLiveNotification",
        "extra",
        "",
        "showNormalNotification",
        "map",
        "largeIcon",
        "Landroid/graphics/Bitmap;",
        "largeImage",
        "showNotification",
        "title",
        "content",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "channelId",
        "imageUrl",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final manager:Landroidx/core/app/NotificationManagerCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(BaseApplication.getInstance() as Application)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->manager:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private final considerPriority(I)I
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLowMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public static final getManager$app_GooglePlayRelease()Landroidx/core/app/NotificationManagerCompat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->manager:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method public static synthetic getManager$app_GooglePlayRelease$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getRandomRequestCode()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private static final notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->manager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p0, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->manager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method static synthetic notify$default(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method public static final showInviteNotification(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 19
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->b(Lorg/json/JSONObject;)Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    move-result-object v2

    .line 2
    iput v1, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->getSLiveInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 4
    iget-object v6, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->getSLiveInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;

    iget-object v7, v7, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;->liveId:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->getSLiveInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;

    iget-object v7, v7, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;->startTime:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;

    invoke-direct {v3}, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;-><init>()V

    .line 6
    iget-object v5, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    iput-object v5, v3, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;->startTime:Ljava/lang/String;

    .line 7
    iget-object v5, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    iput-object v5, v3, Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;->liveId:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->getSLiveInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v6, "PRIVATE_LIVE_INVITE_BY_FCM"

    .line 10
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v6, "private_live_invite_by_tim"

    .line 12
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v6, "private_live_invite_by_jiguang"

    .line 14
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v1

    const v6, 0x7f1204bb

    .line 16
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f1204f2

    new-array v8, v5, [Ljava/lang/Object;

    .line 17
    iget-object v9, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->nickName:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 18
    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 19
    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v6

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v9

    .line 21
    invoke-static {v0, v6, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private_invite_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".userId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v11

    .line 24
    iget-object v13, v2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    .line 25
    invoke-direct {v4, v3}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->considerPriority(I)I

    move-result v16

    const-string v0, "getString(R.string.live_invite_title)"

    .line 26
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x180

    const/16 v18, 0x0

    const-string v10, "13"

    .line 27
    invoke-static/range {v7 .. v18}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->e(Z)V

    return-void
.end method

.method public static final showLiveNotification(Ljava/util/Map;)V
    .locals 15
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "extra"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    const-string v1, "user_id"

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "liveId"

    const-string v2, "live_id"

    .line 2
    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "liveType"

    const-string v2, "live_type"

    .line 3
    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveImg"

    const-string v3, "live_img"

    .line 4
    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "userImg"

    const-string v3, "user_img"

    .line 5
    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveStartTime"

    const-string v4, "live_start_time"

    .line 6
    invoke-static {p0, v3, v4}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "groupId"

    const-string v5, "group_id"

    .line 7
    invoke-static {p0, v4, v5}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 8
    invoke-static {p0, v5}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    .line 9
    invoke-static {p0, v7}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    invoke-direct {v7}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;-><init>()V

    .line 11
    iput-object v0, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userId:Ljava/lang/String;

    .line 12
    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    .line 13
    iput-object v1, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveType:Ljava/lang/String;

    .line 14
    iput-object v9, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    .line 15
    iput-object v2, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userImg:Ljava/lang/String;

    .line 16
    iput-object v3, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    .line 17
    iput-object v4, v7, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v0

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    .line 20
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v2

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v7, 0x3ed

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x388

    const/4 v14, 0x0

    move-object v3, v6

    move-object v4, p0

    move-object v5, v0

    move-object v6, v1

    .line 25
    invoke-static/range {v3 .. v14}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic showNormalNotification$default(Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNormalNotification(Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final showNotification(I)V
    .locals 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3ef

    const/4 v11, 0x0

    move v4, p0

    invoke-static/range {v0 .. v11}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;I)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ee

    const/4 v12, 0x0

    move-object v1, p0

    move v5, p1

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ec

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e0

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c0

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x380

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x300

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v12}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method

.method public static final showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "title"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const p3, 0x7f080359

    .line 3
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p3, -0x1

    .line 4
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    :cond_0
    invoke-virtual {v0, p9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->getVibratorPattern()[J

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p8, :cond_1

    .line 9
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {p0, p7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p0

    invoke-virtual {p0, p8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    if-eqz p6, :cond_2

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "getInstance().resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x1050006

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const p2, 0x1050005

    .line 16
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p0, p1}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    .line 19
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils$showNotification$1;

    invoke-direct {p1, v0, p4, p5}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils$showNotification$1;-><init>(Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    .line 20
    invoke-virtual {v0, p7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    :cond_3
    invoke-static {p4, p5, v0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    :goto_1
    return-void
.end method

.method public static synthetic showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "BuzzCast"

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p2

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const-string v5, "12"

    goto :goto_3

    :cond_3
    move-object v5, p3

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_6

    move-object v9, v3

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v6, v0, 0x100

    if-eqz v6, :cond_7

    move-object v10, v3

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->considerPriority(I)I

    move-result v0

    move v11, v0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    move-object v3, v1

    move/from16 v6, p4

    .line 2
    invoke-static/range {v2 .. v11}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method public final createVoiceRoomInviteNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 46
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "roomId"

    .line 1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "groupChatId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nickName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v15, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v45, v15

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x1

    const/16 v43, 0x1

    const/16 v44, 0x0

    invoke-direct/range {v4 .. v44}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v45

    .line 4
    invoke-virtual {v4, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 7
    invoke-virtual {v4, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v4, "12"

    invoke-direct {v0, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v4, 0x7f120a78

    .line 12
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f080359

    .line 15
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0136

    .line 17
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 19
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "voice_room"

    .line 20
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v3, "ROOM_POS_KEY"

    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isFromNotification"

    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x30400000

    .line 23
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v1

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    const/16 v5, 0x64

    .line 26
    invoke-static {v4, v5, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 28
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->notify(ILjava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method public final showNormalNotification(Ljava/util/Map;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    const-string v1, "map"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    .line 1
    invoke-static {p1, v1}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    .line 2
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/PushUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v4

    const-string v5, "type"

    .line 4
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "240"

    .line 5
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/16 v5, 0xc8

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    const/high16 v7, 0x10000000

    .line 10
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 11
    :goto_0
    invoke-static {v0, v5, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v6

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v7

    .line 15
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 16
    invoke-static {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {v5, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getRandomRequestCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x268

    const/4 v13, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 20
    invoke-static/range {v2 .. v13}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void
.end method
