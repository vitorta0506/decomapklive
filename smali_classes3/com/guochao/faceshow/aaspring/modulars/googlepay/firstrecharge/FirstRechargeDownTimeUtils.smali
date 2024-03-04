.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0003\u001a\u00020\u00048FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;",
        "",
        "()V",
        "lastLoginTime",
        "",
        "getLastLoginTime",
        "()J",
        "setLastLoginTime",
        "(J)V",
        "showIcon",
        "",
        "getShowIcon",
        "()Z",
        "setShowIcon",
        "(Z)V",
        "setLoginTime",
        "",
        "newConfig",
        "Lcom/guochao/faceshow/aaspring/config/ServerConfig;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastLoginTime:J

.field private static showIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastLoginTime()J
    .locals 3

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v1, "live"

    const-string v2, "LastLoginTime"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getShowIcon()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->showIcon:Z

    return v0
.end method

.method public final setLastLoginTime(J)V
    .locals 0

    sput-wide p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->lastLoginTime:J

    return-void
.end method

.method public final setLoginTime(Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/config/ServerConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->lastLoginTime:J

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getLastLoginTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 5
    sput-wide v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->lastLoginTime:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "live"

    const-string v1, "LastLoginTime"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setShowIcon(Z)V
    .locals 0

    sput-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->showIcon:Z

    return-void
.end method
