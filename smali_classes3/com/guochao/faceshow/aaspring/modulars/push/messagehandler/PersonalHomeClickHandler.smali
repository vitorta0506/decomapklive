.class public final Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;
.super Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PersonalHomeClickHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationClicked(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
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

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    const-string v1, "user_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
