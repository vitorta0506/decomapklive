.class public final Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "onMessageReceived",
        "",
        "p0",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "onNewToken",
        "",
        "parseMessage",
        "message",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;->onMessageReceived$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method private static final onMessageReceived$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;->parseMessage(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method private final parseMessage(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->I()Ljava/util/Map;

    move-result-object v0

    const-string v1, "message.data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "1"

    const-string v3, "type_id"

    const-string v4, "icon"

    const-string v5, "content"

    const-string v6, "title"

    if-eqz v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    :try_start_0
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$c;->c()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_3
    invoke-static {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->K()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "fcm_foreground"

    .line 17
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$c;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "large_image"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 2
    new-instance v0, Ls9/b;

    invoke-direct {v0, p0, p1}, Ls9/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;Lcom/google/firebase/messaging/RemoteMessage;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    const-string v0, "1"

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
