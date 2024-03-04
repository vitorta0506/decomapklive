.class public abstract Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;,
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
    }
    exportSchema = true
    version = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Migration1To2;,
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "getPayOrderDao",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;",
        "getSubscribeDao",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;",
        "Companion",
        "Migration1To2",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static _instance:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$get_instance$cp()Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;->_instance:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    return-object v0
.end method

.method public static final synthetic access$set_instance$cp(Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;->_instance:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getPayOrderDao()Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GooglePayOrderRequestModelDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSubscribeDao()Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
