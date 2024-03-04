.class public final Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;",
        "Lcom/huawei/hms/push/HmsMessageService;",
        "()V",
        "onMessageReceived",
        "",
        "p0",
        "Lcom/huawei/hms/push/RemoteMessage;",
        "onNewToken",
        "",
        "p1",
        "Landroid/os/Bundle;",
        "onTokenError",
        "Ljava/lang/Exception;",
        "parseMessage",
        "message",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HuaweiPushService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;->Companion:Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;->onMessageReceived$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method

.method private static final onMessageReceived$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;->parseMessage(Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method

.method private final parseMessage(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/push/RemoteMessage;->getDataOfMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "type_id"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "20"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->onReceiveOnlineMessage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 2
    .param p1    # Lcom/huawei/hms/push/RemoteMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/push/HmsMessageService;->onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V

    .line 2
    new-instance v0, Lt9/c;

    invoke-direct {v0, p0, p1}, Lt9/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;Lcom/huawei/hms/push/RemoteMessage;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1, p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/push/HmsMessageService;->onNewToken(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Huawei push token 2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HuaweiPushService"

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "20"

    .line 4
    invoke-static {v2, p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/push/HmsMessageService;->onTokenError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token error from huawei  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiPushService"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
