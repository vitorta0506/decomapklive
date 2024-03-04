.class final Lcom/google/firebase/messaging/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;ZLt4/h;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/i0;->d(Landroid/content/Context;ZLt4/h;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/j0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/g;->a:Lcom/google/firebase/messaging/g;

    invoke-static {p0}, Lcom/google/firebase/messaging/i0;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/google/firebase/messaging/i0;->e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lt4/g;

    return-void
.end method

.method private static synthetic d(Landroid/content/Context;ZLt4/h;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/i0;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "FirebaseMessaging"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error configuring notification delegate for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p2, v0}, Lt4/h;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_1
    invoke-static {p0, v1}, Lcom/google/firebase/messaging/j0;->c(Landroid/content/Context;Z)V

    .line 7
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "com.google.android.gms"

    if-eqz p1, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationDelegate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p2, v0}, Lt4/h;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Lt4/h;->e(Ljava/lang/Object;)Z

    .line 12
    throw p0
.end method

.method static e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Z)",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le4/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lt4/j;->e(Ljava/lang/Object;)Lt4/g;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lt4/h;

    invoke-direct {v0}, Lt4/h;-><init>()V

    .line 4
    new-instance v1, Lcom/google/firebase/messaging/h0;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/firebase/messaging/h0;-><init>(Landroid/content/Context;ZLt4/h;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lt4/h;->a()Lt4/g;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "firebase_messaging_notification_delegation_enabled"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 4
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x1

    return p0
.end method
