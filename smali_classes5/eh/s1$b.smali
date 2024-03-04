.class final Leh/s1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/base/u;

.field final synthetic f:Leh/s1;


# direct methods
.method private constructor <init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/u;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/s1$b;->f:Leh/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh/s1$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Leh/s1$b;->d:Ljava/util/concurrent/ConcurrentMap;

    const-string p1, "clusterName"

    .line 5
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/s1$b;->a:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Leh/s1$b;->b:Ljava/lang/String;

    const-string p1, "stopwatch"

    .line 7
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/u;

    iput-object p1, p0, Leh/s1$b;->e:Lcom/google/common/base/u;

    .line 8
    invoke-virtual {p4}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    return-void
.end method

.method synthetic constructor <init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/u;Leh/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Leh/s1$b;-><init>(Leh/s1;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/base/u;)V

    return-void
.end method

.method static synthetic a(Leh/s1$b;)Leh/s1$c;
    .locals 0

    invoke-direct {p0}, Leh/s1$b;->e()Leh/s1$c;

    move-result-object p0

    return-object p0
.end method

.method private e()Leh/s1$c;
    .locals 8

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v0, p0, Leh/s1$b;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/s1$b;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 5
    iget-object v0, p0, Leh/s1$b;->e:Lcom/google/common/base/u;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 6
    iget-object v0, p0, Leh/s1$b;->e:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 7
    new-instance v7, Leh/s1$c;

    iget-object v0, p0, Leh/s1$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Leh/s1$c;-><init>(Ljava/util/Map;JJLeh/s1$a;)V

    return-object v7
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Leh/s1$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leh/s1$b;->d:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    :cond_0
    return-void
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Leh/s1$b;->f:Leh/s1;

    iget-object v1, p0, Leh/s1$b;->a:Ljava/lang/String;

    iget-object v2, p0, Leh/s1$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Leh/s1;->a(Leh/s1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
