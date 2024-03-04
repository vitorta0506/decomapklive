.class public Lcom/tencent/imsdk/common/NetworkInfoCenter;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/common/NetworkInfoCenter$Holder;,
        Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;
    }
.end annotation


# static fields
.field private static final NETWORK_1xRTT:I = 0x6b

.field private static final NETWORK_2G3G:I = 0x2

.field private static final NETWORK_CDMA:I = 0x68

.field private static final NETWORK_CDMA1X:I = 0x62

.field private static final NETWORK_EDGE:I = 0x66

.field private static final NETWORK_EHRPD:I = 0x72

.field private static final NETWORK_EVDO_0:I = 0x69

.field private static final NETWORK_EVDO_A:I = 0x6a

.field private static final NETWORK_EVDO_B:I = 0x70

.field private static final NETWORK_GPRS:I = 0x65

.field private static final NETWORK_HSDPA:I = 0x6c

.field private static final NETWORK_HSPA:I = 0x6e

.field private static final NETWORK_HSPAP:I = 0x73

.field private static final NETWORK_HSUPA:I = 0x6d

.field private static final NETWORK_IDEN:I = 0x6f

.field private static final NETWORK_LTE:I = 0x71

.field private static final NETWORK_UMTS:I = 0x67

.field private static final NETWORK_UNKNOWN:I = 0x0

.field private static final NETWORK_WCDMA:I = 0x63

.field private static final NETWORK_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final IP_TYPE_IPV4_ONLY:I

.field final IP_TYPE_IPV6_DUAL:I

.field final IP_TYPE_IPV6_ONLY:I

.field final IP_TYPE_UNKNOWN:I

.field private isRegisterReceiver:Z

.field private mCheckNetworkInterface:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIPType:I

.field private mInitializeCostTime:J

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkConnected:Z

.field private mNetworkSSID:Ljava/lang/String;

.field private mNetworkType:I

.field private mServiceProvider:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkHandle:J

.field private mXgNetworkHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->IP_TYPE_UNKNOWN:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->IP_TYPE_IPV4_ONLY:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->IP_TYPE_IPV6_ONLY:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->IP_TYPE_IPV6_DUAL:I

    .line 6
    iput-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    .line 7
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    .line 8
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkSSID:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mServiceProvider:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mInitializeCostTime:J

    .line 12
    iput-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isRegisterReceiver:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mCheckNetworkInterface:Z

    .line 14
    iput-wide v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mWifiNetworkHandle:J

    .line 15
    iput-wide v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mXgNetworkHandle:J

    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;
    .locals 1

    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter$Holder;->instance:Lcom/tencent/imsdk/common/NetworkInfoCenter;

    return-object v0
.end method

.method private getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private onNetworkChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    sget-object p1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network changed, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p2, :cond_1

    const-string p2, "network changed, mConnectivityManager is null"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    goto :goto_1

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    .line 13
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkType(Landroid/net/NetworkInfo;)V

    .line 14
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkSSID()V

    .line 15
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateProviderName()V

    .line 16
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkInterface()V

    .line 17
    sget-object v1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", current network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 18
    :cond_3
    iput-boolean v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    .line 19
    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    .line 20
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string v1, "no network connection found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_2
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateIPType()V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mInitializeCostTime:J

    .line 23
    iget-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;

    if-eqz v0, :cond_4

    .line 24
    iget-boolean v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkConnected:Z

    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkType()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getIPType()I

    move-result v3

    .line 25
    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getWifiNetworkHandle()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getXgNetworkHandle()J

    move-result-wide v7

    .line 26
    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInitializeCostTime()J

    move-result-wide v9

    .line 27
    invoke-interface/range {v0 .. v10}, Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;->onNetworkChange(ZIILjava/lang/String;JJJ)V

    :cond_4
    return-void
.end method

.method private updateIPType()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateIPType, mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateIPType, no linkProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 11
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 12
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    iget v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    goto :goto_0

    .line 14
    :cond_5
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    iget v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIPType, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_6
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIPType|type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNetworkInterface()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mCheckNetworkInterface:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mWifiNetworkHandle:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mXgNetworkHandle:J

    .line 4
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateNetworkInterface, mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 9
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    if-nez v4, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    .line 11
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    const/16 v7, 0xc

    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    invoke-static {v4}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mWifiNetworkHandle:J

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v5, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 15
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 16
    invoke-static {v4}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mXgNetworkHandle:J

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_7
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkInterface, wifiNetworkHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mWifiNetworkHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " xgNetworkHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mXgNetworkHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNetworkSSID()V
    .locals 0

    return-void
.end method

.method private updateNetworkType(Landroid/net/NetworkInfo;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    .line 5
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v2, :cond_4

    .line 9
    :cond_3
    iput v1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_5

    .line 11
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    return-void

    .line 12
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    sget-object v1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 15
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x73

    .line 16
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x72

    .line 17
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x71

    .line 18
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x70

    .line 19
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x6f

    .line 20
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x6e

    .line 21
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x6d

    .line 22
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x6c

    .line 23
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x6b

    .line 24
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x6a

    .line 25
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x69

    .line 26
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x68

    .line 27
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x67

    .line 28
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x66

    .line 29
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x65

    .line 30
    iput p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    :goto_1
    return-void

    .line 31
    :cond_6
    :goto_2
    iput v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateProviderName()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getIPType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mIPType:I

    return v0
.end method

.method public getInitializeCostTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mInitializeCostTime:J

    return-wide v0
.end method

.method public getNetworkID()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mNetworkType:I

    return v0
.end method

.method public getWifiNetworkHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mWifiNetworkHandle:J

    return-wide v0
.end method

.method public getXgNetworkHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mXgNetworkHandle:J

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mListener:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 6
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 7
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isRegisterReceiver:Z

    :cond_0
    const-string p2, "connectivity"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkType(Landroid/net/NetworkInfo;)V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkSSID()V

    .line 16
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateProviderName()V

    .line 17
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateIPType()V

    .line 18
    invoke-direct {p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->updateNetworkInterface()V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mInitializeCostTime:J

    return-void
.end method

.method public isNetworkConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "connectivity"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string v2, "isNetworkConnected, mConnectivityManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    .line 9
    :cond_4
    sget-object v0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string v2, "isNetworkConnected, activeNetwork is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string p2, "receive broadcast intent == null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/tencent/imsdk/common/NetworkInfoCenter;->TAG:Ljava/lang/String;

    const-string p2, "receive broadcast intent.getAction == null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->onNetworkChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isRegisterReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isRegisterReceiver:Z

    :cond_0
    return-void
.end method
