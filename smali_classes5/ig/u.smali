.class final Lig/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/u$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Throwable;

.field private static b:Ljava/lang/Throwable;


# direct methods
.method static a()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lig/u$a;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method static declared-synchronized b()Ljava/lang/Throwable;
    .locals 2

    const-class v0, Lig/u;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lig/u;->a:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lig/u;->d()Z

    .line 3
    :cond_0
    sget-object v1, Lig/u;->a:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static c()Z
    .locals 1

    invoke-static {}, Lig/u;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static declared-synchronized d()Z
    .locals 4

    const-class v0, Lig/u;

    monitor-enter v0

    :try_start_0
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    sput-object v1, Lig/u;->a:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized e()Z
    .locals 4

    const-class v0, Lig/u;

    monitor-enter v0

    :try_start_0
    const-string v1, "org.eclipse.jetty.npn.NextProtoNego"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    sput-object v1, Lig/u;->b:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw v1
.end method
