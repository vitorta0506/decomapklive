.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/i$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->f(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->c(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Z)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUserLiveBanned()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getRestartLiveTimeStamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsgLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsgLang()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_3

    .line 7
    new-instance p1, Lcom/guochao/faceshow/views/e;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/h;

    invoke-direct {p1, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->j()V

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public static d(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/modulars/live/common/i$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i$a;->onResponse()V

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic f(Landroid/app/Dialog;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
