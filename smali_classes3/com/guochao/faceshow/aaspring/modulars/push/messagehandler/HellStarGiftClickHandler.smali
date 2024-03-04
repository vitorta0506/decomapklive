.class public final Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;
.super Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/HellStarGiftClickHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationClicked(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
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

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    .line 2
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    const-string v0, "KEY_HELLO_HOUR_SHOW_V2"

    .line 3
    invoke-virtual {p2, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v0, "hellostar_hellogiftsecend"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;

    const/4 v0, 0x1

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getFirstNum()I

    move-result v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v1

    invoke-virtual {p2, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;->getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;

    move-result-object p2

    .line 7
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "currTopActivity.supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HelloStarGiftDialog"

    .line 8
    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
