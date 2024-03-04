.class public Lcom/snapchat/kit/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static b:Lcom/snapchat/kit/sdk/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lbe/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.snapchat.kit.sdk.clientId"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "com.snapchat.kit.sdk.redirectUrl"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "com.snapchat.kit.sdk.scopes"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.snapchat.kit.sdk.plugin"

    .line 10
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-static {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v9, v0

    goto :goto_2

    .line 12
    :catch_0
    :try_start_2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->NO_PLUGIN:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    goto :goto_1

    :goto_2
    const-string v0, "com.snapchat.kit.sdk.firebaseExtCustomTokenUrl"

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "com.snapchat.kit.sdk.isFromReactNativePlugin"

    .line 14
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 15
    invoke-static {}, Lcom/snapchat/kit/sdk/g;->m()Lcom/snapchat/kit/sdk/g$a;

    move-result-object v0

    new-instance v1, Lcom/snapchat/kit/sdk/k;

    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v3, v1

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v11}, Lcom/snapchat/kit/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/g$a;->b(Lcom/snapchat/kit/sdk/k;)Lcom/snapchat/kit/sdk/g$a;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/g$a;->a()Lbe/b;

    move-result-object p1

    iput-object p1, p0, Lcom/snapchat/kit/sdk/b;->a:Lbe/b;

    .line 18
    invoke-interface {p1}, Lbe/c;->d()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/snapchat/kit/sdk/b$a;

    invoke-direct {v0, p1}, Lcom/snapchat/kit/sdk/b$a;-><init>(Lbe/b;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "client id must be set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No metadata for the current app!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 21
    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not get metadata for current package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/b;
    .locals 0

    invoke-static {p0, p1}, Lcom/snapchat/kit/sdk/b;->c(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/b;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snapchat/kit/sdk/h$a;-><init>(B)V

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/h;

    invoke-direct {v0, v1}, Lcom/snapchat/kit/sdk/h;-><init>(B)V

    .line 3
    new-instance v1, Lcom/snapchat/kit/sdk/b$b;

    invoke-direct {v1, p0}, Lcom/snapchat/kit/sdk/b$b;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-interface {v0}, Lbe/e;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {p0, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/snapchat/kit/sdk/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/snapchat/kit/sdk/b;->b:Lcom/snapchat/kit/sdk/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/snapchat/kit/sdk/b;-><init>(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)V

    sput-object v1, Lcom/snapchat/kit/sdk/b;->b:Lcom/snapchat/kit/sdk/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/b;->b:Lcom/snapchat/kit/sdk/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static d(Landroid/content/Context;)Lbe/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_FEATURE:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    invoke-static {p0, v0}, Lcom/snapchat/kit/sdk/b;->c(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/b;

    move-result-object p0

    iget-object p0, p0, Lcom/snapchat/kit/sdk/b;->a:Lbe/b;

    return-object p0
.end method
