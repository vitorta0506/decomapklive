.class public final Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0002\u0008\u0003\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "sLiveInfos",
        "",
        "Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;",
        "getSLiveInfos",
        "()Ljava/util/List;",
        "vibratorPattern",
        "",
        "getVibratorPattern",
        "()[J",
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
.field private static final sLiveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final vibratorPattern:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->sLiveInfos:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->vibratorPattern:[J

    return-void

    :array_0
    .array-data 8
        0xc8
        0x64
        0xc8
    .end array-data
.end method

.method public static final getSLiveInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->sLiveInfos:Ljava/util/List;

    return-object v0
.end method

.method public static final getVibratorPattern()[J
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsKt;->vibratorPattern:[J

    return-object v0
.end method
