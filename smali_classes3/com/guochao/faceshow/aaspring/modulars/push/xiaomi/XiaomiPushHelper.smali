.class public final Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;
.super Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "tokenType",
        "",
        "(Ljava/lang/String;)V",
        "getTokenType",
        "()Ljava/lang/String;",
        "checkToken",
        "",
        "initOnce",
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


# instance fields
.field private final tokenType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tokenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;->tokenType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "11"

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkToken()V
    .locals 0

    return-void
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/xiaomi/XiaomiPushHelper;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public initOnce()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->Y(Lcom/xiaomi/channel/commonutils/android/Region;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "2882303761517820134"

    const-string v2, "5811782057134"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/j;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/j;->t(Landroid/content/Context;)V

    return-void
.end method
