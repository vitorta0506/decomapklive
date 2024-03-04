.class public final Lcom/google/api/gax/rpc/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ll5/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/l0$c;,
        Lcom/google/api/gax/rpc/l0$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/logging/Logger;

.field private static g:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/api/gax/rpc/l0$c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lk5/a;

.field private final c:Lorg/threeten/bp/Duration;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/gax/rpc/l0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/gax/rpc/l0;->f:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/api/gax/rpc/l0;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lk5/a;Lorg/threeten/bp/Duration;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/gax/rpc/l0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "clock can\'t be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/a;

    iput-object p1, p0, Lcom/google/api/gax/rpc/l0;->b:Lk5/a;

    .line 4
    iput-object p2, p0, Lcom/google/api/gax/rpc/l0;->c:Lorg/threeten/bp/Duration;

    .line 5
    iput-object p3, p0, Lcom/google/api/gax/rpc/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic b(Lcom/google/api/gax/rpc/l0;)Lk5/a;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/l0;->b:Lk5/a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/api/gax/rpc/l0;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/l0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static d(Lk5/a;Lorg/threeten/bp/Duration;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/l0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/l0;-><init>(Lk5/a;Lorg/threeten/bp/Duration;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    invoke-direct {v0}, Lcom/google/api/gax/rpc/l0;->k()V

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/gax/rpc/l0$c;

    .line 4
    invoke-virtual {v1}, Lcom/google/api/gax/rpc/l0$c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/api/gax/rpc/l0;->c:Lorg/threeten/bp/Duration;

    .line 2
    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/api/gax/rpc/l0;->c:Lorg/threeten/bp/Duration;

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    .line 3
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/l0;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/api/gax/rpc/l0;->shutdown()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/gax/rpc/l0;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/api/gax/rpc/l0;->f:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Caught throwable in periodic Watchdog run. Continuing."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/google/api/gax/rpc/l0;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
