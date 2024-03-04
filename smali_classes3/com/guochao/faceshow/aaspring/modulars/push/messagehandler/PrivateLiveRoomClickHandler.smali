.class public final Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;
.super Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;",
        "()V",
        "onNotificationClicked",
        "",
        "context",
        "Landroid/content/Context;",
        "bundle",
        "Landroid/os/Bundle;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationClicked(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v0

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->b(Lorg/json/JSONObject;)Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    move-result-object p2

    const/4 v0, 0x3

    .line 2
    iput v0, p2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    const-string v0, "2"

    .line 3
    iput-object v0, p2, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
