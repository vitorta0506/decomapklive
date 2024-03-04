.class public Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$h;,
        Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;
    }
.end annotation


# instance fields
.field a:Landroid/telephony/TelephonyManager;

.field b:Lio/reactivex/observers/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/StringBuffer;

.field g:Ljava/lang/String;

.field mScrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewProgress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->i0(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private e0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->b:Lio/reactivex/observers/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/observers/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "disposed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->f:Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->f:Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i0(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lf7/b;->i0:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$a;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V

    invoke-static/range {v0 .. v6}, Lqd/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;ZLjava/lang/Object;Lod/b;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dns Server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->l0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "dhcxzil.facecast.xyz"

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "push.facecast.xyz"

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "push.facecast.xyz.tlivepush.com"

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0x2d

    .line 11
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "live.facecast.xyz"

    .line 13
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0x3c

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "live.facecast.xyz.tlivecdn.com"

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0x50

    .line 17
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e0()V

    const-string p1, "mp4.facecast.xyz"

    .line 19
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 20
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    .line 21
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g:Ljava/lang/String;

    .line 25
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetworkAnalysis"

    const-string v1, ""

    .line 26
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method private k0(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "Dns Ip: ( \"%s\" )"

    const-string v1, "Check Domain Hostname"

    .line 1
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 5
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-array v7, v4, [Ljava/lang/Object;

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    new-array v0, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "(resolving time %d ms) "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Start Ping , Please Wait..."

    .line 10
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v5

    const-string v1, "ping -c 4 %s"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/guochao/faceshow/aaspring/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    const-string v0, "Start TraceRoute , Please Wait..."

    .line 16
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;-><init>(Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->doInBackground(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private l0()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "dns1: "

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->m0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dns2:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->m0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "getprop net.dns1"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_0

    :catch_1
    move-object v3, v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    move-object v0, v1

    .line 12
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 13
    :catch_2
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 14
    throw v0

    :catch_3
    move-object v2, v0

    move-object v3, v2

    .line 15
    :catch_4
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 16
    :catch_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    return-object v0
.end method

.method public static m0(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n0(I)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public copy(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "clipboard"

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "FaceCast"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f1201e7

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 7
    sget-object p1, Lf7/b;->j0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "flag"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0081

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->c:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d:Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->c:I

    if-ge v0, v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->f:Ljava/lang/StringBuffer;

    const-string v0, "phone"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->a:Landroid/telephony/TelephonyManager;

    const v0, 0x7f120805

    .line 8
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->o0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 3

    const-string v0, "System: Android"

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android api level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System version: Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getAPPVersionNameAndVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V

    const/16 v1, 0x14

    .line 13
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->n0(I)V

    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$h;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$a;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->b:Lio/reactivex/observers/b;

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->b:Lio/reactivex/observers/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/observers/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->b:Lio/reactivex/observers/b;

    invoke-virtual {v0}, Lio/reactivex/observers/b;->dispose()V

    :cond_0
    return-void
.end method
