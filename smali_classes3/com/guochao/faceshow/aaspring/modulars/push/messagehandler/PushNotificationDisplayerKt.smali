.class public final Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "TAG",
        "",
        "executor",
        "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "getExecutor",
        "()Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
        "registerDisplayer",
        "",
        "map",
        "Landroidx/collection/ArrayMap;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;",
        "app_GooglePlayRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationDisplayer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayerKt;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public static final getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayerKt;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static final registerDisplayer(Landroidx/collection/ArrayMap;)V
    .locals 2
    .param p0    # Landroidx/collection/ArrayMap;
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

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/LiveRoomDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/LiveRoomDisplayer;

    const-string v1, "12"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomDisplayer;

    const-string v1, "58"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;

    const-string v1, "98"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
