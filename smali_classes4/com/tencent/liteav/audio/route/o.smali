.class public final Lcom/tencent/liteav/audio/route/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/route/o$b;,
        Lcom/tencent/liteav/audio/route/o$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/tencent/liteav/audio/route/o$b;

.field private final c:Lcom/tencent/liteav/audio/route/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/audio/route/o$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o;->b:Lcom/tencent/liteav/audio/route/o$b;

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/o;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getIntentIntExtra "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSystemBroadcastReceiver"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 5
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "AudioSystemBroadcastReceiver"

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "receive Action: %s"

    .line 2
    invoke-static {v0, v4, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/16 v8, 0xa

    packed-switch v3, :pswitch_data_0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "ignore unknow Action: %s"

    .line 4
    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_0
    invoke-static {p2, v7, v6}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const-string/jumbo v3, "unknown"

    goto :goto_2

    :cond_6
    const-string v3, "STATE_DISCONNECTING"

    goto :goto_2

    :cond_7
    const-string v3, "STATE_CONNECTED"

    goto :goto_2

    :cond_8
    const-string v3, "STATE_CONNECTING"

    goto :goto_2

    :cond_9
    const-string v3, "STATE_DISCONNECTED"

    :goto_2
    aput-object v3, p2, v1

    const-string v3, "receive bluetooth headset connection state changed: %s"

    .line 6
    invoke-static {v0, v3, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    if-eq p1, v5, :cond_a

    goto :goto_3

    .line 7
    :cond_a
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/route/o$a;->onBluetoothConnectionChanged(Z)V

    :goto_3
    return-void

    .line 8
    :cond_b
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/o$a;->onBluetoothConnectionChanged(Z)V

    return-void

    .line 9
    :pswitch_1
    invoke-static {p2, v7, v8}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_c

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "receive bluetooth audio state changed to STATE_AUDIO_CONNECTED"

    .line 10
    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/route/o$a;->onBluetoothSCOConnected(Z)V

    return-void

    :cond_c
    if-ne p1, v8, :cond_d

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED"

    .line 12
    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/o$a;->onBluetoothSCOConnected(Z)V

    :cond_d
    return-void

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 14
    invoke-static {p2, p1, v1}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const-string v3, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 15
    invoke-static {p2, v3, v1}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    new-array v3, v5, [Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Lcom/tencent/liteav/audio/route/o;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Lcom/tencent/liteav/audio/route/o;->a(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "receive ACTION_STATE_CHANGED, EXTRA_STATE: %s, EXTRA_PREVIOUS_STATE: %s"

    .line 17
    invoke-static {v0, p2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v8, :cond_e

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/o$a;->onBluetoothConnectionChanged(Z)V

    :cond_e
    return-void

    :pswitch_3
    const-string/jumbo p1, "state"

    .line 19
    invoke-static {p2, p1, v6}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_f

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown headset state, ignore..."

    .line 20
    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_f
    iget-object p2, p0, Lcom/tencent/liteav/audio/route/o;->c:Lcom/tencent/liteav/audio/route/o$a;

    if-eqz p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    invoke-virtual {p2, v1}, Lcom/tencent/liteav/audio/route/o$a;->onWiredHeadsetConnectionChanged(Z)V

    return-void

    :cond_11
    :goto_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "onReceive intent or context is null!"

    .line 22
    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_3
        -0x5b36f014 -> :sswitch_2
        -0x5591500b -> :sswitch_1
        0x2083ec2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
