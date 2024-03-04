.class final Lcom/tencent/liteav/audio/route/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/bluetooth/BluetoothAdapter;

.field b:Landroid/bluetooth/BluetoothProfile;

.field final c:Ljava/lang/Object;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/o$b;->d:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/tencent/liteav/audio/route/o$b;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    const-string v2, "AudioSystemBroadcastReceiver"

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getProfileProxy "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "bluetooth adapter is null"

    .line 8
    invoke-static {v2, v0, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static c()Landroid/bluetooth/BluetoothAdapter;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDefaultAdapter exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioSystemBroadcastReceiver"

    invoke-static {v2, v0, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConnectedDevices exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioSystemBroadcastReceiver"

    invoke-static {v2, v0, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEnabled exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioSystemBroadcastReceiver"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/o$b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "AudioSystemBroadcastReceiver"

    const-string v4, "mBluetoothHeadsetProfile is null ,wait for 1000ms"

    new-array v5, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v3, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    if-nez v3, :cond_1

    .line 8
    monitor-exit v2

    return v1

    :cond_1
    const-string v3, "AudioSystemBroadcastReceiver"

    const-string v4, "mBluetoothHeadsetProfile service is connected now"

    new-array v5, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {v3, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/tencent/liteav/audio/route/o$b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/liteav/audio/route/o;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/tencent/liteav/audio/route/o$b;->d()Ljava/util/List;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "AudioSystemBroadcastReceiver"

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get connected bluetooth devices failed."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_4
    :goto_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return v1
.end method

.method final b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeProfileProxy exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AudioSystemBroadcastReceiver"

    invoke-static {v2, v0, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_1

    const-string v2, "AudioSystemBroadcastReceiver"

    const-string v3, "BluetoohHeadset proxy changed from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object p2, v4, v0

    .line 3
    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/route/o$b;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    .line 6
    :cond_1
    iput-object p2, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    .line 7
    iget-object p2, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/o$b;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/route/o$b;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/audio/route/o$b;->b:Landroid/bluetooth/BluetoothProfile;

    .line 5
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
