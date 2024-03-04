.class public Lcom/tencent/liteav/txcplayer/common/VodPlayerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::licence"
.end annotation


# static fields
.field public static final STRATEGY_FAIL:I = 0x1

.field public static final STRATEGY_PASS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayerLicenceControlStrategy()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/VodPlayerControl;->nativeGetPlayerLicenceControlStrategy()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPlayerLicenceControlStrategy = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VodPlayerControl"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static native nativeGetPlayerLicenceControlStrategy()I
.end method
