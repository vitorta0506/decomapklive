.class public Lcom/google/firebase/heartbeatinfo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/i;
.implements Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Lcom/google/firebase/heartbeatinfo/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Ls6/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li6/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Li6/e;->a:Li6/e;

    sput-object v0, Lcom/google/firebase/heartbeatinfo/a;->f:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk6/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Li6/g;",
            ">;",
            "Lk6/b<",
            "Ls6/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Li6/f;

    invoke-direct {v1, p1, p2}, Li6/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lcom/google/firebase/heartbeatinfo/a;->f:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/heartbeatinfo/a;-><init>(Lk6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lk6/b;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lk6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lk6/b;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/b<",
            "Lcom/google/firebase/heartbeatinfo/b;",
            ">;",
            "Ljava/util/Set<",
            "Li6/g;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lk6/b<",
            "Ls6/i;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lk6/b;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/util/Set;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Lk6/b;

    .line 7
    iput-object p5, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/b;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/a;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(La6/e;)Lcom/google/firebase/heartbeatinfo/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/a;->i(La6/e;)Lcom/google/firebase/heartbeatinfo/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/a;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/a;->m(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/a;->l()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static h()La6/d;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d<",
            "Lcom/google/firebase/heartbeatinfo/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/heartbeatinfo/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Li6/i;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La6/d;->d(Ljava/lang/Class;[Ljava/lang/Class;)La6/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-static {v1}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v1

    invoke-virtual {v0, v1}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v0

    const-class v1, Lcom/google/firebase/d;

    .line 3
    invoke-static {v1}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v1

    invoke-virtual {v0, v1}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v0

    const-class v1, Li6/g;

    .line 4
    invoke-static {v1}, La6/r;->k(Ljava/lang/Class;)La6/r;

    move-result-object v1

    invoke-virtual {v0, v1}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v0

    const-class v1, Ls6/i;

    .line 5
    invoke-static {v1}, La6/r;->j(Ljava/lang/Class;)La6/r;

    move-result-object v1

    invoke-virtual {v0, v1}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v0

    sget-object v1, Li6/b;->a:Li6/b;

    .line 6
    invoke-virtual {v0, v1}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, La6/d$b;->d()La6/d;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic i(La6/e;)Lcom/google/firebase/heartbeatinfo/a;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/a;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/d;

    .line 3
    invoke-interface {p0, v2}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/d;

    invoke-virtual {v2}, Lcom/google/firebase/d;->p()Ljava/lang/String;

    move-result-object v2

    const-class v3, Li6/g;

    .line 4
    invoke-interface {p0, v3}, La6/e;->k(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v4, Ls6/i;

    .line 5
    invoke-interface {p0, v4}, La6/e;->l(Ljava/lang/Class;)Lk6/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/heartbeatinfo/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk6/b;)V

    return-object v0
.end method

.method private synthetic j()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/b;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/b;->b()V

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/j;

    .line 8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent"

    .line 9
    invoke-virtual {v3}, Li6/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dates"

    .line 10
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Li6/j;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "heartbeats"

    .line 13
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "2"

    .line 14
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    const-string v1, "UTF-8"

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :catchall_4
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method private static synthetic k(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/heartbeatinfo/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic l()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lk6/b;

    .line 3
    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/b;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/a;->c:Lk6/b;

    invoke-interface {v3}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls6/i;

    invoke-interface {v3}, Ls6/i;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/heartbeatinfo/b;->k(JLjava/lang/String;)V

    .line 6
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static synthetic m(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt4/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lt4/j;->e(Ljava/lang/Object;)Lt4/g;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Li6/c;

    invoke-direct {v1, p0}, Li6/c;-><init>(Lcom/google/firebase/heartbeatinfo/a;)V

    invoke-static {v0, v1}, Lt4/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lt4/g;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/heartbeatinfo/a;->a:Lk6/b;

    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/heartbeatinfo/b;

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/b;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/b;->g()V

    .line 5
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :cond_0
    :try_start_1
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n()Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {v1}, Lt4/j;->e(Ljava/lang/Object;)Lt4/g;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Lt4/j;->e(Ljava/lang/Object;)Lt4/g;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/a;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Li6/d;

    invoke-direct {v1, p0}, Li6/d;-><init>(Lcom/google/firebase/heartbeatinfo/a;)V

    invoke-static {v0, v1}, Lt4/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lt4/g;

    move-result-object v0

    return-object v0
.end method
