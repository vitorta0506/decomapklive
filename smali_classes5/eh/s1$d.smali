.class final Leh/s1$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Leh/t1;

.field private final d:Lcom/google/common/base/u;

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic i:Leh/s1;


# direct methods
.method private constructor <init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;Lcom/google/common/base/u;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/s1$d;->i:Leh/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh/s1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh/s1$d;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh/s1$d;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh/s1$d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p1, "clusterName"

    .line 7
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/s1$d;->a:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Leh/s1$d;->b:Ljava/lang/String;

    const-string p1, "locality"

    .line 9
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/t1;

    iput-object p1, p0, Leh/s1$d;->c:Leh/t1;

    const-string p1, "stopwatch"

    .line 10
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/u;

    iput-object p1, p0, Leh/s1$d;->d:Lcom/google/common/base/u;

    .line 11
    invoke-virtual {p5}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    return-void
.end method

.method synthetic constructor <init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;Lcom/google/common/base/u;Leh/s1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/s1$d;-><init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;Lcom/google/common/base/u;)V

    return-void
.end method

.method static synthetic a(Leh/s1$d;)Leh/s1$e;
    .locals 0

    invoke-direct {p0}, Leh/s1$d;->e()Leh/s1$e;

    move-result-object p0

    return-object p0
.end method

.method private e()Leh/s1$e;
    .locals 15

    .line 1
    iget-object v0, p0, Leh/s1$d;->d:Lcom/google/common/base/u;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 2
    iget-object v0, p0, Leh/s1$d;->d:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 3
    new-instance v0, Leh/s1$e;

    iget-object v1, p0, Leh/s1$d;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    iget-object v1, p0, Leh/s1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v1, p0, Leh/s1$d;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    iget-object v1, p0, Leh/s1$d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v13

    const/4 v1, 0x0

    move-object v2, v0

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v13

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Leh/s1$e;-><init>(JJJJJLeh/s1$a;)V

    return-object v0
.end method


# virtual methods
.method b(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/s1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    .line 2
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Leh/s1$d;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Leh/s1$d;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    :goto_0
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/s1$d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 2
    iget-object v0, p0, Leh/s1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Leh/s1$d;->i:Leh/s1;

    iget-object v1, p0, Leh/s1$d;->a:Ljava/lang/String;

    iget-object v2, p0, Leh/s1$d;->b:Ljava/lang/String;

    iget-object v3, p0, Leh/s1$d;->c:Leh/t1;

    invoke-static {v0, v1, v2, v3}, Leh/s1;->b(Leh/s1;Ljava/lang/String;Ljava/lang/String;Leh/t1;)V

    return-void
.end method
