.class public Lcom/xiaomi/push/service/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/x1$a;,
        Lcom/xiaomi/push/service/x1$c;,
        Lcom/xiaomi/push/service/x1$d;,
        Lcom/xiaomi/push/service/x1$b;
    }
.end annotation


# static fields
.field private static c:J

.field private static d:J


# instance fields
.field private final a:Lcom/xiaomi/push/service/x1$c;

.field private final b:Lcom/xiaomi/push/service/x1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_0
    sput-wide v2, Lcom/xiaomi/push/service/x1;->c:J

    sput-wide v2, Lcom/xiaomi/push/service/x1;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/x1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/push/service/x1$c;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/x1$c;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    new-instance p1, Lcom/xiaomi/push/service/x1$a;

    invoke-direct {p1, v0}, Lcom/xiaomi/push/service/x1$a;-><init>(Lcom/xiaomi/push/service/x1$c;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/x1;->b:Lcom/xiaomi/push/service/x1$a;

    return-void
.end method

.method static declared-synchronized a()J
    .locals 7

    const-class v0, Lcom/xiaomi/push/service/x1;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/xiaomi/push/service/x1;->d:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-wide v5, Lcom/xiaomi/push/service/x1;->c:J

    sub-long v3, v1, v3

    add-long/2addr v5, v3

    sput-wide v5, Lcom/xiaomi/push/service/x1;->c:J

    :cond_0
    sput-wide v1, Lcom/xiaomi/push/service/x1;->d:J

    sget-wide v1, Lcom/xiaomi/push/service/x1;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private j(Lcom/xiaomi/push/service/x1$b;J)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/x1$c;->h(Lcom/xiaomi/push/service/x1$c;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaomi/push/service/x1;->a()J

    move-result-wide v1

    add-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    new-instance v1, Lcom/xiaomi/push/service/x1$d;

    invoke-direct {v1}, Lcom/xiaomi/push/service/x1$d;-><init>()V

    iget v2, p1, Lcom/xiaomi/push/service/x1$b;->a:I

    iput v2, v1, Lcom/xiaomi/push/service/x1$d;->e:I

    iput-object p1, v1, Lcom/xiaomi/push/service/x1$d;->d:Lcom/xiaomi/push/service/x1$b;

    iput-wide p2, v1, Lcom/xiaomi/push/service/x1$d;->c:J

    iget-object p1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {p1, v1}, Lcom/xiaomi/push/service/x1$c;->d(Lcom/xiaomi/push/service/x1$c;Lcom/xiaomi/push/service/x1$d;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal delay to start the TimerTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timer was canceled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quit. finalizer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->b:Lcom/xiaomi/push/service/x1$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/x1$c;->c()V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/x1$c;->b(Lcom/xiaomi/push/service/x1$c;)Lcom/xiaomi/push/service/x1$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/x1$c$a;->e(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(ILcom/xiaomi/push/service/x1$b;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/x1$c;->b(Lcom/xiaomi/push/service/x1$c;)Lcom/xiaomi/push/service/x1$c$a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/push/service/x1$c$a;->f(ILcom/xiaomi/push/service/x1$b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/xiaomi/push/service/x1$b;)V
    .locals 2

    invoke-static {}, Ltf/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "run job outside job job thread"

    invoke-static {p1}, Ltf/c;->u(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Run job outside job thread"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public f(Lcom/xiaomi/push/service/x1$b;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/x1;->j(Lcom/xiaomi/push/service/x1$b;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/x1$c;->g()Z

    move-result v0

    return v0
.end method

.method public h(I)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/x1$c;->b(Lcom/xiaomi/push/service/x1$c;)Lcom/xiaomi/push/service/x1$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/x1$c$a;->i(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/x1;->a:Lcom/xiaomi/push/service/x1$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/x1$c;->b(Lcom/xiaomi/push/service/x1$c;)Lcom/xiaomi/push/service/x1$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/x1$c$a;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
