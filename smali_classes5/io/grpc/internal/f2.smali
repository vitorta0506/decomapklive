.class public final Lio/grpc/internal/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/f2$c;,
        Lio/grpc/internal/f2$e;,
        Lio/grpc/internal/f2$d;
    }
.end annotation


# static fields
.field private static final d:Lio/grpc/internal/f2;


# instance fields
.field private final a:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/internal/f2$d<",
            "*>;",
            "Lio/grpc/internal/f2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/internal/f2$e;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/internal/f2;

    new-instance v1, Lio/grpc/internal/f2$a;

    invoke-direct {v1}, Lio/grpc/internal/f2$a;-><init>()V

    invoke-direct {v0, v1}, Lio/grpc/internal/f2;-><init>(Lio/grpc/internal/f2$e;)V

    sput-object v0, Lio/grpc/internal/f2;->d:Lio/grpc/internal/f2;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/f2$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/f2;->a:Ljava/util/IdentityHashMap;

    .line 3
    iput-object p1, p0, Lio/grpc/internal/f2;->b:Lio/grpc/internal/f2$e;

    return-void
.end method

.method static synthetic a(Lio/grpc/internal/f2;)Ljava/util/IdentityHashMap;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/f2;->a:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/internal/f2;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/f2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/internal/f2;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/f2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method public static d(Lio/grpc/internal/f2$d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/f2$d<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lio/grpc/internal/f2;->d:Lio/grpc/internal/f2;

    invoke-virtual {v0, p0}, Lio/grpc/internal/f2;->e(Lio/grpc/internal/f2$d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/f2$d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    sget-object v0, Lio/grpc/internal/f2;->d:Lio/grpc/internal/f2;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/f2;->g(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method declared-synchronized e(Lio/grpc/internal/f2$d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/f2$d<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/f2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/f2$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/internal/f2$c;

    invoke-interface {p1}, Lio/grpc/internal/f2$d;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/f2$c;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lio/grpc/internal/f2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, v0, Lio/grpc/internal/f2$c;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Lio/grpc/internal/f2$c;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    :cond_1
    iget p1, v0, Lio/grpc/internal/f2$c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lio/grpc/internal/f2$c;->b:I

    .line 8
    iget-object p1, v0, Lio/grpc/internal/f2$c;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized g(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/f2$d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/f2;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/f2$c;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, v0, Lio/grpc/internal/f2$c;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Releasing the wrong instance"

    invoke-static {v1, v4}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 3
    iget v1, v0, Lio/grpc/internal/f2$c;->b:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Refcount has already reached zero"

    invoke-static {v1, v4}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget v1, v0, Lio/grpc/internal/f2$c;->b:I

    sub-int/2addr v1, v3

    iput v1, v0, Lio/grpc/internal/f2$c;->b:I

    if-nez v1, :cond_4

    .line 5
    iget-object v1, v0, Lio/grpc/internal/f2$c;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string v1, "Destroy task already scheduled"

    invoke-static {v2, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lio/grpc/internal/f2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lio/grpc/internal/f2;->b:Lio/grpc/internal/f2$e;

    invoke-interface {v1}, Lio/grpc/internal/f2$e;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/f2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/f2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/d1;

    new-instance v3, Lio/grpc/internal/f2$b;

    invoke-direct {v3, p0, v0, p1, p2}, Lio/grpc/internal/f2$b;-><init>(Lio/grpc/internal/f2;Lio/grpc/internal/f2$c;Lio/grpc/internal/f2$d;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lio/grpc/internal/d1;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lio/grpc/internal/f2$c;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    return-object p1

    .line 10
    :cond_5
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No cached instance found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
